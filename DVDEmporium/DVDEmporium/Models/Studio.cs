using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Models
{
    public class Studio
    {
        [Key]
        public int StudioID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Studio Name")]
        public string StudioName { get; set; }

        public virtual ICollection<Movie> StudioMovies { get; set; }
    }
}
