using DrinkSmile_WebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DrinkSmile_WebAPI.Controllers
{
    public class DrinkSmileController : ApiController
    {
        [HttpGet]
        [Route("api/DrinkSmile/cow/{name}")]
        public IHttpActionResult GetCow(string name)
        {
            var cow = new
            {
                cowID = 1,
                catName = name
            };
            return Ok(cow);
        }

        [HttpGet]
        [Route("api/DrinkSmile/cowList")]
        public HttpResponseMessage GetList()
        {
            using (DrinkEntities ctx = new DrinkEntities())
            {
                var list = ctx.Cows.ToList();
                return Request.CreateResponse(
                    HttpStatusCode.Created,
                    list);
            }

            //return Ok(list);
        }
    }
}
