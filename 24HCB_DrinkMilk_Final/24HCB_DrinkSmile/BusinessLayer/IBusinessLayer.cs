using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface IBusinessLayer
    {
        // Trụ Sở
        IList<DomainModel.TRUSO> GetAllTruSo();
        TRUSO GetTruSoById(int id);
        void AddTruSo(params TRUSO[] TruSos);
        void UpdateTruSo(params TRUSO[] TruSos);
        void RemoveTruSo(params TRUSO[] TruSos);

        // Cơ Sở
        IList<DomainModel.COSO> GetAllCoSo();
        COSO GetCoSoById(int id);
        IList<COSO> GetCoSoByTruSoCode(int TruSoCode);
        void AddCoSo(params COSO[] CoSos);
        void UpdateCoSo(params COSO[] CoSos);
        void RemoveCoSo(params COSO[] CoSos);

        // Chuồng
        IList<DomainModel.CHUONG> GetAllChuong();
        CHUONG GetChuongById(int id);
        IList<CHUONG> GetChuongByCoSoCode(int CoSoCode);
        void AddChuong(params CHUONG[] Chuongs);
        void UpdateChuong(params CHUONG[] Chuongs);
        void RemoveChuong(params CHUONG[] Chuongs);

        // Bò
        IList<DomainModel.BO> GetAllBo();
        BO GetBoById(int id);
        void AddBo(params BO[] Bos);
        void UpdateBo(params BO[] Bos);
        void RemoveBo(params BO[] Bos);

        // Chi tiết sức khỏe
        IList<DomainModel.CTSUCKHOE> GetAllCTSucKhoe();
        CTSUCKHOE GetCTSucKhoeById(int id);

        void AddCTSucKhoe(params CTSUCKHOE[] CTSucKhoes);
        void UpdateCTSucKhoe(params CTSUCKHOE[] CTSucKhoes);
        void RemoveCTSucKhoe(params CTSUCKHOE[] CTSucKhoes);

        // Quy Trình Vắt Sữa
        IList<DomainModel.QUYTRINHVATSUA> GetAllQTVatSua();
        QUYTRINHVATSUA GetQuyTrinhVatSuaById(int id);
        IList<DomainModel.QUYTRINHVATSUA> GetQuyTrinhVatSuaByDate(DateTime ngay);
        IList<QUYTRINHVATSUA> GetQTVatSuaByChuongCode(int MaSoChuong);
        void AddQTVatSua(params QUYTRINHVATSUA[] QTVatSuas);
        void UpdateQTVatSua(params QUYTRINHVATSUA[] QTVatSuas);
        void RemoveQTVatSua(params QUYTRINHVATSUA[] QTVatSuas);

        // Chi Tiết Quy Trình
        IList<DomainModel.CTQUYTRINH> GetAllCTQuyTrinh();
        IList<CTQUYTRINH> GetCTQuyTrinhByQuyTrinhCode(int MaQuyTrinh);
        void AddCTQuyTrinh(params CTQUYTRINH[] CTQuyTrinhs);
        void UpdateCTQuyTrinh(params CTQUYTRINH[] CTQuyTrinhs);
        void RemoveCTQuyTrinh(params CTQUYTRINH[] CTQuyTrinhs);

        // Nhân Viên
        IList<DomainModel.NHANVIEN> GetAllNhanVien();

        // Bồn Chứa
        IList<DomainModel.BONCHUA> GetAllBonChua();
        IList<BONCHUA> GetBonChuaByCoSoCode(int CoSoCode);

        // Phân phối
        IList<DomainModel.PHANPHOI> GetAllPhanPhoi();
        IList<PHANPHOI> GetPhanPhoiByBonChuaCode(int MaBonChua);
    }
}
