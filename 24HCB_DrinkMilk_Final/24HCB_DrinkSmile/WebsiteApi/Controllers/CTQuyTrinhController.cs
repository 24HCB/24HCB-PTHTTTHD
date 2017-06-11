using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class CTQuyTrinhController : ApiController
    {
        // GET api/values
        public IEnumerable<CTQUYTRINH> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllCTQuyTrinh();
        }

        // GET api/values/5
        public IEnumerable<CTQUYTRINH> Get(int MaQuyTrinh)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetCTQuyTrinhByQuyTrinhCode(MaQuyTrinh);
        }

        // POST api/values
        public void Post([FromBody]DomainModel.CTQUYTRINH value)
        {
            IEnumerable<CTQUYTRINH> CTQuyTrinh = new BusinessLayer.BusinessLayer().GetAllCTQuyTrinh();
            foreach(CTQUYTRINH ct in CTQuyTrinh)
            {
                if(ct.MaQuyTrinh == value.MaQuyTrinh && ct.MaSoChip == value.MaSoChip)
                {
                    return;
                }
            }
            new BusinessLayer.BusinessLayer().AddCTQuyTrinh(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.CTQUYTRINH value)
        {
            IEnumerable<CTQUYTRINH> CTQuyTrinh = new BusinessLayer.BusinessLayer().GetAllCTQuyTrinh();
            foreach (CTQUYTRINH ct in CTQuyTrinh)
            {
                if (ct.MaQuyTrinh == value.MaQuyTrinh && ct.MaSoChip == value.MaSoChip)
                {
                    return;
                }
            }
            new BusinessLayer.BusinessLayer().UpdateCTQuyTrinh(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.CTQUYTRINH value)
        {
            new BusinessLayer.BusinessLayer().RemoveCTQuyTrinh(value);
        }
    }
}
