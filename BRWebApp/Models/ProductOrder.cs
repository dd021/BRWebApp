using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BRWebApp.Models
{
    public class ProductOrder
    {
        [Key]
        public int OrderID { get; set; }

        [Required]
        [StringLength(1000)]
        [Display(Name = "Delivery Address")]
        public string Address { get; set; }

        [Display(Name = "Order Date")]
        public DateTime OrderDate { get; set; }

        [StringLength(200)]
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [Required]
        [Display(Name = "Price")]
        public float Price { get; set; }

        [Required]
        [Display(Name = "Quantity")]
        public int Quantity { get; set; }

        [Required]
        [Display(Name = "Quantity")]
        public float Total { get; set; }

        [Required]
        public int ProductID { get; set; }

        [ForeignKey("ProductID")]
        [InverseProperty("ProductOrders")]
        public ProductInfo Product { get; set; }
    }
}
