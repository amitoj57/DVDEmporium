using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DVDEmporium.Data;
using DVDEmporium.Models;
using Microsoft.AspNetCore.Hosting;
using System.IO;
using Microsoft.AspNetCore.Authorization;

namespace DVDEmporium.Controllers
{
    [Authorize(Roles = "admin")]
    public class MoviesController : Controller
    {
        private readonly ApplicationDbContext _context;

        private readonly IWebHostEnvironment _environment;

        public MoviesController(ApplicationDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _environment = env;
        }

        // GET: Movies
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Movies.Include(m => m.MovieDirector).Include(m => m.MovieGenre).Include(m => m.MovieStudio);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Movies/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var movie = await _context.Movies
                .Include(m => m.MovieDirector)
                .Include(m => m.MovieGenre)
                .Include(m => m.MovieStudio)
                .FirstOrDefaultAsync(m => m.MovieID == id);
            if (movie == null)
            {
                return NotFound();
            }

            return View(movie);
        }

        // GET: Movies/Create
        public IActionResult Create()
        {
            ViewData["DirectoryID"] = new SelectList(_context.Directors.OrderBy(p=> p.DirectorName), "DirectorID", "DirectorName");
            ViewData["GenreID"] = new SelectList(_context.Genres.OrderBy(p => p.GenreName), "GenreID", "GenreName");
            ViewData["StudioID"] = new SelectList(_context.Studios.OrderBy(p => p.StudioName), "StudioID", "StudioName");
            return View();
        }

        // POST: Movies/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MovieID,Title,TagLine,Plot,Year,Price,File,DirectoryID,GenreID,StudioID")] Movie movie)
        {
            using (var memoryStream = new MemoryStream())
            {
                await movie.File.FormFile.CopyToAsync(memoryStream);

                string photoname = movie.File.FormFile.FileName;
                movie.Extension = Path.GetExtension(photoname);
                if (!".jpg.jpeg.png.gif.bmp".Contains(movie.Extension.ToLower()))
                {
                    ModelState.AddModelError("File.FormFile", "Invalid Format of Image Given.");
                }
                else
                {
                    ModelState.Remove("Extension");
                }
            }
            if (ModelState.IsValid)
            {
                _context.Add(movie);
                await _context.SaveChangesAsync();
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "covers");
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                string filename = movie.MovieID + movie.Extension;
                var filePath = Path.Combine(uploadsRootFolder, filename);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await movie.File.FormFile.CopyToAsync(fileStream).ConfigureAwait(false);
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DirectoryID"] = new SelectList(_context.Directors.OrderBy(p => p.DirectorName), "DirectorID", "DirectorName", movie.DirectoryID);
            ViewData["GenreID"] = new SelectList(_context.Genres.OrderBy(p => p.GenreName), "GenreID", "GenreName", movie.GenreID);
            ViewData["StudioID"] = new SelectList(_context.Studios.OrderBy(p => p.StudioName), "StudioID", "StudioName", movie.StudioID);
            return View(movie);
        }

        // GET: Movies/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var movie = await _context.Movies.FindAsync(id);
            if (movie == null)
            {
                return NotFound();
            }
            ViewData["DirectoryID"] = new SelectList(_context.Directors.OrderBy(p => p.DirectorName), "DirectorID", "DirectorName", movie.DirectoryID);
            ViewData["GenreID"] = new SelectList(_context.Genres.OrderBy(p => p.GenreName), "GenreID", "GenreName", movie.GenreID);
            ViewData["StudioID"] = new SelectList(_context.Studios.OrderBy(p => p.StudioName), "StudioID", "StudioName", movie.StudioID);
            return View(movie);
        }

        // POST: Movies/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MovieID,Title,TagLine,Plot,Year,Price,Extension,DirectoryID,GenreID,StudioID")] Movie movie)
        {
            if (id != movie.MovieID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(movie);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MovieExists(movie.MovieID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DirectoryID"] = new SelectList(_context.Directors.OrderBy(p => p.DirectorName), "DirectorID", "DirectorName", movie.DirectoryID);
            ViewData["GenreID"] = new SelectList(_context.Genres.OrderBy(p => p.GenreName), "GenreID", "GenreName", movie.GenreID);
            ViewData["StudioID"] = new SelectList(_context.Studios.OrderBy(p => p.StudioName), "StudioID", "StudioName", movie.StudioID);
            return View(movie);
        }

        // GET: Movies/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var movie = await _context.Movies
                .Include(m => m.MovieDirector)
                .Include(m => m.MovieGenre)
                .Include(m => m.MovieStudio)
                .FirstOrDefaultAsync(m => m.MovieID == id);
            if (movie == null)
            {
                return NotFound();
            }

            return View(movie);
        }

        // POST: Movies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var movie = await _context.Movies.FindAsync(id);
            _context.Movies.Remove(movie);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MovieExists(int id)
        {
            return _context.Movies.Any(e => e.MovieID == id);
        }
    }
}
