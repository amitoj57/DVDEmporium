using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Models
{
    public class Director
    {
        [Key]
        public int DirectorID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Director Name")]
        public string DirectorName { get; set; }

        public virtual ICollection<Movie> DirectorMovies { get; set; }
    }
}
