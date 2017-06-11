using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class ChuongController : ApiController
    {
        // GET api/values
        public IEnumerable<CHUONG> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllChuong();
        }

        // GET api/values/5
        public CHUONG Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetChuongById(id);
        }

        // POST api/values
        public void Post([FromBody]DomainModel.CHUONG value)
        {
            new BusinessLayer.BusinessLayer().AddChuong(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.CHUONG value)
        {
            new BusinessLayer.BusinessLayer().UpdateChuong(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.CHUONG value)
        {
            new BusinessLayer.BusinessLayer().RemoveChuong(value);
        }
    }
}
