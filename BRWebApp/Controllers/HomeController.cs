using BRWebApp.Data;
using BRWebApp.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace BRWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }


        public async Task<IActionResult> AllProducts()
        {
            var applicationDbContext = _context.ProductInfos
                .Include(j => j.Category);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ProductsByCategory(int? id)
        {
            var category = await _context.CategoryInfos.FindAsync(id);
            ViewData["CategoryName"] = "None";
            if (category != null)
            {
                ViewData["CategoryName"] = category.CategoryName;
            }
            var applicationDbContext = _context.ProductInfos
                .Include(j => j.Category)
                .Where(m => m.CategoryID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productInfo = await _context.ProductInfos
                .Include(p => p.Category)
                .FirstOrDefaultAsync(m => m.ProductID == id);
            if (productInfo == null)
            {
                return NotFound();
            }

            return View(productInfo);
        }

        [Authorize]
        public IActionResult PlaceOrder(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var product = _context.ProductInfos
                .FirstOrDefault(m => m.ProductID == id);
            if (product == null)
            {
                return NotFound();
            }

            ViewData["ProductID"] = product.ProductID;
            ViewData["ProductTitle"] = product.ProductTitle;
            ViewData["Price"] = product.Price;
            ViewData["ExtName"] = product.ExtName;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> PlaceOrder([Bind("OrderID,Address,Price,Quantity,ProductID")] ProductOrder productOrder)
        {
            ModelState.Remove("Total");
            ModelState.Remove("UserID");
            ModelState.Remove("OrderDate");
            if (ModelState.IsValid)
            {
                productOrder.UserID = _userManager.GetUserName(this.User);
                productOrder.OrderDate = DateTime.Now;
                productOrder.Total = productOrder.Price * productOrder.Quantity;
                _context.Add(productOrder);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(nameof(MyOrders));
        }

        [Authorize]
        public async Task<IActionResult> MyOrders()
        {
            string userid = _userManager.GetUserName(this.User);
            var orders = _context.ProductOrders
                .Include(m => m.Product)
                .Where(m => m.UserID == userid);
            return View(await orders.OrderByDescending(m => m.OrderID).ToListAsync());
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
