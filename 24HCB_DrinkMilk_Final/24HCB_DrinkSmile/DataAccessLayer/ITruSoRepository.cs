using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DomainModel;

namespace DataAccessLayer
{
    public interface ITruSoRepository : IGenericDataRepository<DomainModel.TRUSO> { }
    public interface ICoSoRepository : IGenericDataRepository<DomainModel.COSO> { }
    public class TruSoRepository : GenericDataRepository<DomainModel.TRUSO>, ITruSoRepository { }
    public class CoSoRepository : GenericDataRepository<DomainModel.COSO>, ICoSoRepository { }

}
