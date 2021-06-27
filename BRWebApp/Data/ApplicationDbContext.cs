using BRWebApp.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace BRWebApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<CategoryInfo> CategoryInfos { get; set; }
        public DbSet<ProductInfo> ProductInfos { get; set; }

        public DbSet<EnquiryInfo> EnquiryInfos { get; set; }
        public DbSet<ProductOrder> ProductOrders { get; set; }
    }
}
