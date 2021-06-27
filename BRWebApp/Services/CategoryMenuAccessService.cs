using BRWebApp.Data;
using BRWebApp.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BRWebApp.Services
{
    public class CategoryMenuAccessService : ICategoryMenuAccessService
    {
        private readonly ApplicationDbContext _context;

        public CategoryMenuAccessService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<CategoryInfo>> GetCategoryMenu()
        {
            return await _context.CategoryInfos.ToListAsync();
        }
    }
}
