using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Models
{
    public class Genre
    {
        [Key]
        public int GenreID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Genre Name")]
        public string GenreName { get; set; }

        public virtual ICollection<Movie> GenreMovies { get; set; }
    }
}
