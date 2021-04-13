using DVDEmporium.Data;
using DVDEmporium.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Genres.OrderBy(x => x.GenreName).ToListAsync());
        }

        public async Task<IActionResult> AllDirectors()
        {
            return View(await _context.Directors.OrderBy(x => x.DirectorName).ToListAsync());
        }

        public async Task<IActionResult> AllStudios()
        {
            return View(await _context.Studios.OrderBy(x => x.StudioName).ToListAsync());
        }

        public async Task<IActionResult> AllMovies()
        {
            var applicationDbContext = _context.Movies.Include(m => m.MovieDirector).Include(m => m.MovieGenre).Include(m => m.MovieStudio);
            return View(await applicationDbContext.OrderBy(x => Guid.NewGuid()).ToListAsync());
        }

        public async Task<IActionResult> ViewMoviesByGenre(int? id)
        {
            var genre = await _context.Genres.FindAsync(id);
            ViewData["GenreName"] = "None";
            if(genre!=null)
            {
                ViewData["GenreName"] = genre.GenreName;
            }
            var applicationDbContext = _context.Movies.
                Include(m => m.MovieDirector).
                Include(m => m.MovieGenre).
                Include(m => m.MovieStudio)
                .Where(m => m.GenreID == id);
            return View(await applicationDbContext.OrderBy(x => Guid.NewGuid()).ToListAsync());
        }

        public async Task<IActionResult> ViewMoviesByStudio(int? id)
        {
            var studio = await _context.Studios.FindAsync(id);
            ViewData["StudioName"] = "None";
            if (studio != null)
            {
                ViewData["StudioName"] = studio.StudioName;
            }
            var applicationDbContext = _context.Movies.
                Include(m => m.MovieDirector).
                Include(m => m.MovieGenre).
                Include(m => m.MovieStudio)
                .Where(m => m.StudioID == id);
            return View(await applicationDbContext.OrderBy(x => Guid.NewGuid()).ToListAsync());
        }

        public async Task<IActionResult> ViewMoviesByDirector(int? id)
        {
            var director = await _context.Directors.FindAsync(id);
            ViewData["DirectorName"] = "None";
            if (director != null)
            {
                ViewData["DirectorName"] = director.DirectorName;
            }
            var applicationDbContext = _context.Movies.
                Include(m => m.MovieDirector).
                Include(m => m.MovieGenre).
                Include(m => m.MovieStudio)
                .Where(m => m.DirectoryID == id);
            return View(await applicationDbContext.OrderBy(x => Guid.NewGuid()).ToListAsync());
        }

        //ViewMovieDetails
        public async Task<IActionResult> ViewMovieDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var movie = await _context.Movies.
                Include(m => m.MovieDirector).
                Include(m => m.MovieGenre).
                Include(m => m.MovieStudio)
                .FirstOrDefaultAsync(m => m.MovieID == id);
            if (movie == null)
            {
                return NotFound();
            }

            return View(movie);
        }


        [Authorize]
        public IActionResult ProcessCheckOut(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var movie = _context.Movies
                .FirstOrDefault(m => m.MovieID == id);
            if (movie == null)
            {
                return NotFound();
            }

            ViewData["MovieID"] = movie.MovieID;
            ViewData["Title"] = movie.Title;
            ViewData["TagLine"] = movie.TagLine;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ProcessCheckOut([Bind("OrderID,Address,Quantity,MovieID")] Order order)
        {
            ModelState.Remove("Price");
            ModelState.Remove("Total");
            ModelState.Remove("UserID");
            ModelState.Remove("OrderDate");
            if (ModelState.IsValid)
            {
                order.UserID = _userManager.GetUserName(this.User);
                order.OrderDate = DateTime.Now;
                var comicInfo = await _context.Movies.FirstOrDefaultAsync(m => m.MovieID == order.MovieID);
                if (comicInfo != null)
                {
                    order.Price = comicInfo.Price;
                    order.Total = order.Price * order.Quantity;
                }
                _context.Add(order);
                await _context.SaveChangesAsync();                
            }
            return RedirectToAction(nameof(OrderHistory));
        }

        [Authorize]
        public async Task<IActionResult> OrderHistory()
        {
            string userid = _userManager.GetUserName(this.User);
            var orders = _context.Orders
                .Where(m => m.UserID == userid);
            if (orders.Count() > 0)
            {
                foreach (Order order in orders)
                {
                    order.Movie = _context.Movies
                        .FirstOrDefault(m => m.MovieID == order.MovieID);
                }
            }
            return View(await orders.OrderByDescending(m => m.OrderID).ToListAsync());
        }




        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
