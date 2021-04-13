using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace DVDEmporium.Models
{
    public class Order
    {
        [Key]
        public int OrderID { get; set; }

        [Required]
        [StringLength(1000)]
        [Display(Name ="Delivery Address")]
        public string Address { get; set; }

        [Display(Name ="Order Date")]
        public DateTime OrderDate { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name ="User ID")]
        public string UserID { get; set; }

        [Required]
        [Display(Name = "Quantity")]
        public int Quantity { get; set; }

        [Required]
        [Display(Name ="DVD Price")]
        public float Price { get; set; }

        [Display(Name = "Order Total")]
        public float Total { get; set; }

        [Required]
        public int MovieID { get; set; }

        [ForeignKey("MovieID")]
        [InverseProperty("Orders")]
        public Movie Movie { get; set; }
    }
}
