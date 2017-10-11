using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace HelloWebApi.Controllers
{
    [Route("api/[controller]")]
    public class HealthCheckController : Controller
    {

        // GET api/values
        [HttpGet]
        public bool Get()
        {
            return true;
        }
    }
}
