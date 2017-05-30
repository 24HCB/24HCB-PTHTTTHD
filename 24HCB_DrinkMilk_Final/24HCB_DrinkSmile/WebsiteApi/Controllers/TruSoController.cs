using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class TruSoController : ApiController
    {
        // GET api/values
        public IEnumerable<TRUSO> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllTruSo();
        }

        // GET api/values/5
        public TRUSO Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetTruSoByName(id);
        }

        // POST api/values
        public void Post([FromBody]DomainModel.TRUSO value)
        {
            new BusinessLayer.BusinessLayer().AddTruSo(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.TRUSO value)
        {
            new BusinessLayer.BusinessLayer().UpdateTruSo(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.TRUSO value)
        {
            new BusinessLayer.BusinessLayer().RemoveTruSo(value);
        }
    }
}
