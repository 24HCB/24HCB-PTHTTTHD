using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DomainModel;

namespace BusinessLayer
{
    public class BusinessLayer : IBusinessLayer
    {
        private readonly ITruSoRepository _deptRepository;
        private readonly ICoSoRepository _emplRepository;
		
		private readonly IChuongRepository _chuongRepository;
        private readonly IBoRepository _boRepository;	
		private readonly IChiTietSucKhoeRepository _ctSucKhoeRepository;
		
        private readonly IQuyTrinhVatSuaRepository _qtVatSuaRepository;		
		private readonly IChiTietQuyTrinhRepository _ctQuyTrinhRepository;
		
        private readonly INhanVienRepository _nhanVienRepository;	
		private readonly IBonChuaRepository _bonChuaRepository;
        private readonly IPhanPhoiRepository _phanPhoiRepository;

        public BusinessLayer()
        {
            _deptRepository = new TruSoRepository();
            _emplRepository = new CoSoRepository();
			
			_chuongRepository = new ChuongRepository();
            _boRepository = new BoRepository();
			_ctSucKhoeRepository = new ChiTietSucKhoeRepository();
			
            _qtVatSuaRepository = new QuyTrinhVatSuaRepository();
			_ctQuyTrinhRepository = new ChiTietQuyTrinhRepository();
			
            _nhanVienRepository = new NhanVienRepository();
			_bonChuaRepository = new BonChuaRepository();
            _phanPhoiRepository = new PhanPhoiRepository();
        }

		#region TRUSO
        public IList<DomainModel.TRUSO> GetAllTruSo()
        {
            return _deptRepository.GetAll();
        }

        public DomainModel.TRUSO GetTruSoById(int id)
        {
            return _deptRepository.GetSingle(d => d.MaTruSo.Equals(id));
        }

        public void AddTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.add(TruSos);
        }

        public void UpdateTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.update(TruSos);
        }

        public void RemoveTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.remove(TruSos);
        }	
		#endregion

		#region COSO
        public IList<DomainModel.COSO> GetAllCoSo()
        {
            return _emplRepository.GetAll();
        }

        public DomainModel.COSO GetCoSoById(int id)
        {
            return _emplRepository.GetSingle(d => d.MaCS.Equals(id));
        }

        public IList<DomainModel.COSO> GetCoSoByTruSoCode(int TruSoCode)
        {
            return _emplRepository.GetList(d => d.MaTruSo.Equals(TruSoCode));
        }

        public void AddCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.add(CoSos);
        }

        public void UpdateCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.update(CoSos);
        }

        public void RemoveCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.remove(CoSos);
        }
		#endregion
		
		#region CHUONG
        public IList<DomainModel.CHUONG> GetAllChuong()
        {
            return _chuongRepository.GetAll();
        }

        public DomainModel.CHUONG GetChuongById(int id)
        {
            return _chuongRepository.GetSingle(d => d.MaSoChuong.Equals(id));
        }

        public IList<DomainModel.CHUONG> GetChuongByCoSoCode(int CoSoCode)
        {
            return _chuongRepository.GetList(d => d.MaCoSo.Equals(CoSoCode));
        }

        public void AddChuong(params DomainModel.CHUONG[] Chuongs)
        {
            _chuongRepository.add(Chuongs);
        }

        public void UpdateChuong(params DomainModel.CHUONG[] Chuongs)
        {
            _chuongRepository.update(Chuongs);
        }

        public void RemoveChuong(params DomainModel.CHUONG[] Chuongs)
        {
            _chuongRepository.remove(Chuongs);
        }
		#endregion
		
		#region BO
        public IList<DomainModel.BO> GetAllBo()
        {
            return _boRepository.GetAll();
        }
        public DomainModel.BO GetBoById(int id)
        {
            return _boRepository.GetSingle(d => d.MaSoChip.Equals(id));
        }

        public void AddBo(params DomainModel.BO[] Bos)
        {
            _boRepository.add(Bos);
        }

        public void UpdateBo(params DomainModel.BO[] Bos)
        {
            _boRepository.update(Bos);
        }

        public void RemoveBo(params DomainModel.BO[] Bos)
        {
            _boRepository.remove(Bos);
        }
		#endregion
		
		#region CTSUCKHOE
        public IList<DomainModel.CTSUCKHOE> GetAllCTSucKhoe()
        {
            return _ctSucKhoeRepository.GetAll();
        }

        public DomainModel.CTSUCKHOE GetCTSucKhoeById(int id)
        {
            return _ctSucKhoeRepository.GetSingle(d => d.MaSoChip.Equals(id));
        }

        public void AddCTSucKhoe(params DomainModel.CTSUCKHOE[] CTSucKhoes)
        {
            _ctSucKhoeRepository.add(CTSucKhoes);
        }

        public void UpdateCTSucKhoe(params DomainModel.CTSUCKHOE[] CTSucKhoes)
        {
            _ctSucKhoeRepository.update(CTSucKhoes);
        }

        public void RemoveCTSucKhoe(params DomainModel.CTSUCKHOE[] CTSucKhoes)
        {
            _ctSucKhoeRepository.remove(CTSucKhoes);
        }
		#endregion
		
		#region QTVATSUA
        public IList<DomainModel.QUYTRINHVATSUA> GetAllQTVatSua()
        {
            return _qtVatSuaRepository.GetAll();
        }
        public IList<DomainModel.QUYTRINHVATSUA> GetQuyTrinhVatSuaByDate(DateTime date)
        {
            return _qtVatSuaRepository.GetList(d => d.NgayThucHien.Equals(date));
        }
        public DomainModel.QUYTRINHVATSUA GetQuyTrinhVatSuaById(int id)
        {
            return _qtVatSuaRepository.GetSingle(d => d.MaQuyTrinh.Equals(id));
        }

        public IList<DomainModel.QUYTRINHVATSUA> GetQTVatSuaByChuongCode(int MaSoChuong)
        {
            return _qtVatSuaRepository.GetList(d => d.MaSoChuong.Equals(MaSoChuong));
        }

        public void AddQTVatSua(params DomainModel.QUYTRINHVATSUA[] QTVatSuas)
        {
            _qtVatSuaRepository.add(QTVatSuas);
        }

        public void UpdateQTVatSua(params DomainModel.QUYTRINHVATSUA[] QTVatSuas)
        {
            _qtVatSuaRepository.update(QTVatSuas);
        }

        public void RemoveQTVatSua(params DomainModel.QUYTRINHVATSUA[] QTVatSuas)
        {
            _qtVatSuaRepository.remove(QTVatSuas);
        }
		#endregion
		
		#region CTQUYTRINH
        public IList<DomainModel.CTQUYTRINH> GetAllCTQuyTrinh()
        {
            return _ctQuyTrinhRepository.GetAll();
        }
		
		public IList<DomainModel.CTQUYTRINH> GetCTQuyTrinhByQuyTrinhCode(int MaQuyTrinh)
        {
            return _ctQuyTrinhRepository.GetList(d => d.MaQuyTrinh.Equals(MaQuyTrinh));
        }

        public void AddCTQuyTrinh(params DomainModel.CTQUYTRINH[] CTQuyTrinhs)
        {
            _ctQuyTrinhRepository.add(CTQuyTrinhs);
        }

        public void UpdateCTQuyTrinh(params DomainModel.CTQUYTRINH[] CTQuyTrinhs)
        {
            _ctQuyTrinhRepository.update(CTQuyTrinhs);
        }

        public void RemoveCTQuyTrinh(params DomainModel.CTQUYTRINH[] CTQuyTrinhs)
        {
            _ctQuyTrinhRepository.remove(CTQuyTrinhs);
        }
		#endregion
		
		#region NHANVIEN
        public IList<DomainModel.NHANVIEN> GetAllNhanVien()
        {
            return _nhanVienRepository.GetAll();
        }
		#endregion
		
		#region BONCHUA
        public IList<DomainModel.BONCHUA> GetAllBonChua()
        {
            return _bonChuaRepository.GetAll();
        }
		
		public IList<DomainModel.BONCHUA> GetBonChuaByCoSoCode(int CoSoCode)
        {
            return _bonChuaRepository.GetList(d => d.MaCoSo.Equals(CoSoCode));
        }
		#endregion
		
		#region PHANPHOI
        public IList<DomainModel.PHANPHOI> GetAllPhanPhoi()
        {
            return _phanPhoiRepository.GetAll();
        }
		
		public IList<DomainModel.PHANPHOI> GetPhanPhoiByBonChuaCode(int MaBonChua)
        {
            return _phanPhoiRepository.GetList(d => d.MaBonChua.Equals(MaBonChua));
        }
		#endregion
    }
}

