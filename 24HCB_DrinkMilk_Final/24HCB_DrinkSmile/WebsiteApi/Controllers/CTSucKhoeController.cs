using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class CTSucKhoeController : ApiController
    {
        // GET api/values
        public IEnumerable<CTSUCKHOE> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllCTSucKhoe();
        }
        public CTSUCKHOE Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetCTSucKhoeById(id);
        }

        // POST api/values
        public void Post([FromBody]DomainModel.CTSUCKHOE value)
        {
            new BusinessLayer.BusinessLayer().AddCTSucKhoe(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.CTSUCKHOE value)
        {
            new BusinessLayer.BusinessLayer().UpdateCTSucKhoe(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.CTSUCKHOE value)
        {
            new BusinessLayer.BusinessLayer().RemoveCTSucKhoe(value);
        }
    }
}
