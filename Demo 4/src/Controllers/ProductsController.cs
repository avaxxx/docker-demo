using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace HelloWebApi.Controllers
{
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        private readonly DatabaseContext _context;

        public ProductsController(DatabaseContext context)
        {
            _context = context;
        }

        // GET api/values
        [HttpGet]
        public IEnumerable<Product> Get()
        {
            return _context.Products;
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public Product Get(int id)
        {
            return _context.Products.FirstOrDefault(o => o.Id == id);
        }

        // POST api/values
        [HttpPost]
        public async Task<Product> Post([FromBody]Product product)
        {
            await _context.AddAsync(product);
            await _context.SaveChangesAsync();

            return product;
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public async Task<Product> Put(int id, [FromBody]string name)
        {
            var product = await _context.FindAsync<Product>(id);

            product.Name = name;

            await _context.SaveChangesAsync();

            return product;

        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            var product = _context.Find<Product>(id);
            _context.Remove(product);
            _context.SaveChanges();
        }
    }
}
