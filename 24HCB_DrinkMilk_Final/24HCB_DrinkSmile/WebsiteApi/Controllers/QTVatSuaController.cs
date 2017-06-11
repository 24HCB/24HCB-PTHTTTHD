using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class QTVatSuaController : ApiController
    {
        // GET api/values
        public IEnumerable<QUYTRINHVATSUA> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllQTVatSua();
        }

        // GET api/values/5
        public QUYTRINHVATSUA Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetQuyTrinhVatSuaById(id);
        }

        public IEnumerable<QUYTRINHVATSUA> Get(DateTime date)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetQuyTrinhVatSuaByDate(date);
        }

        // POST api/values
        public IEnumerable<QUYTRINHVATSUA> Post([FromBody]DomainModel.QUYTRINHVATSUA value)
        {
            if (value.MaQuyTrinh.ToString() == "0")
            {
                DateTime date = new DateTime();
                date = (DateTime)value.NgayThucHien;
                return new BusinessLayer.BusinessLayer().GetQuyTrinhVatSuaByDate(date);
            }
            else
            {
                new BusinessLayer.BusinessLayer().AddQTVatSua(value);
                return null;
            }
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.QUYTRINHVATSUA value)
        {
            new BusinessLayer.BusinessLayer().UpdateQTVatSua(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.QUYTRINHVATSUA value)
        {
            new BusinessLayer.BusinessLayer().RemoveQTVatSua(value);
        }
    }
}
