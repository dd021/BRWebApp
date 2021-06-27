using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BRWebApp.Models
{
    public class CategoryInfo
    {
        [Key]
        public int CategoryID { get; set; }
        
        [Required]
        [StringLength(100)]
        public string CategoryName { get; set; }

        public ICollection<ProductInfo> Products { get; set; }
    }
}
