using Microsoft.AspNetCore.Mvc;

namespace DapperProject.Controllers
{
    public class HomeController1 : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
