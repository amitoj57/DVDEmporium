using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Models
{
    public class Movie
    {
        [Key]
        public int MovieID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Movie Title")]
        public string Title { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Tag Line")]
        public string TagLine { get; set; }

        [Required]
        [StringLength(1000)]
        [Display(Name = "Plot")]
        public string Plot { get; set; }

        [Required]
        [Display(Name = "Release Year")]
        public int  Year { get; set; }

        [Required]
        [Display(Name ="DVD Price")]
        public float Price { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [NotMapped]
        public SingleFileUpload File { get; set; }

        [Required]
        public int DirectoryID { get; set; }

        [Required]
        public int GenreID { get; set; }

        [Required]
        public int StudioID { get; set; }

        [ForeignKey("DirectoryID")]
        [InverseProperty("DirectorMovies")]
        public virtual Director MovieDirector { get; set; }

        [ForeignKey("GenreID")]
        [InverseProperty("GenreMovies")]
        public virtual Genre MovieGenre { get; set; }

        [ForeignKey("StudioID")]
        [InverseProperty("StudioMovies")]
        public virtual Studio MovieStudio { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
    public class SingleFileUpload
    {
        [Required]
        [Display(Name = "File")]
        public IFormFile FormFile { get; set; }
    }
}
