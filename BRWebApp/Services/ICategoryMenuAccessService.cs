using BRWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BRWebApp.Services
{
    public interface ICategoryMenuAccessService
    {
        Task<List<CategoryInfo>> GetCategoryMenu();
    }
}
