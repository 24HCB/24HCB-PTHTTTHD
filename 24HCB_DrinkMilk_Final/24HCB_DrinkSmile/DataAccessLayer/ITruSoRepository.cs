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
	public interface IBoRepository : IGenericDataRepository<DomainModel.BO> { }
	public interface IChuongRepository : IGenericDataRepository<DomainModel.CHUONG> { }
	public interface INhanVienRepository : IGenericDataRepository<DomainModel.NHANVIEN> { }
	public interface IBonChuaRepository : IGenericDataRepository<DomainModel.BONCHUA> { }
	public interface IChiTietQuyTrinhRepository : IGenericDataRepository<DomainModel.CTQUYTRINH> { }
	public interface IChiTietSucKhoeRepository : IGenericDataRepository<DomainModel.CTSUCKHOE> { }
	public interface IPhanPhoiRepository : IGenericDataRepository<DomainModel.PHANPHOI> { }
	public interface IQuyTrinhVatSuaRepository : IGenericDataRepository<DomainModel.QUYTRINHVATSUA> { }
	
    public class TruSoRepository : GenericDataRepository<DomainModel.TRUSO>, ITruSoRepository { }
    public class CoSoRepository : GenericDataRepository<DomainModel.COSO>, ICoSoRepository { }
	public class BoRepository : GenericDataRepository<DomainModel.BO>, IBoRepository { }
    public class ChuongRepository : GenericDataRepository<DomainModel.CHUONG>, IChuongRepository { }
	public class NhanVienRepository : GenericDataRepository<DomainModel.NHANVIEN>, INhanVienRepository { }
    public class BonChuaRepository : GenericDataRepository<DomainModel.BONCHUA>, IBonChuaRepository { }
	public class ChiTietQuyTrinhRepository : GenericDataRepository<DomainModel.CTQUYTRINH>, IChiTietQuyTrinhRepository { }
    public class ChiTietSucKhoeRepository : GenericDataRepository<DomainModel.CTSUCKHOE>, IChiTietSucKhoeRepository { }
	public class PhanPhoiRepository : GenericDataRepository<DomainModel.PHANPHOI>, IPhanPhoiRepository { }
    public class QuyTrinhVatSuaRepository : GenericDataRepository<DomainModel.QUYTRINHVATSUA>, IQuyTrinhVatSuaRepository { }
}
