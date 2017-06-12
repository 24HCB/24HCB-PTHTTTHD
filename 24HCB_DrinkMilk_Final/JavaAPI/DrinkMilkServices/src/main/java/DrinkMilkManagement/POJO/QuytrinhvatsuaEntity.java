package DrinkMilkManagement.POJO;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "QUYTRINHVATSUA", schema = "dbo", catalog = "DrinkMilk")
public class QuytrinhvatsuaEntity {
    private int maQuyTrinh;
    private Integer maSoChuong;
    private Integer maNhanVien;
    private Date ngayThucHien;
    private Serializable gioBatDau;
    private Serializable gioKetThuc;

    @Id
    @Column(name = "MaQuyTrinh")
    public int getMaQuyTrinh() {
        return maQuyTrinh;
    }

    public void setMaQuyTrinh(int maQuyTrinh) {
        this.maQuyTrinh = maQuyTrinh;
    }

    @Basic
    @Column(name = "MaSoChuong")
    public Integer getMaSoChuong() {
        return maSoChuong;
    }

    public void setMaSoChuong(Integer maSoChuong) {
        this.maSoChuong = maSoChuong;
    }

    @Basic
    @Column(name = "MaNhanVien")
    public Integer getMaNhanVien() {
        return maNhanVien;
    }

    public void setMaNhanVien(Integer maNhanVien) {
        this.maNhanVien = maNhanVien;
    }

    @Basic
    @Column(name = "NgayThucHien")
    public Date getNgayThucHien() {
        return ngayThucHien;
    }

    public void setNgayThucHien(Date ngayThucHien) {
        this.ngayThucHien = ngayThucHien;
    }

    @Basic
    @Column(name = "GioBatDau")
    public Serializable getGioBatDau() {
        return gioBatDau;
    }

    public void setGioBatDau(Serializable gioBatDau) {
        this.gioBatDau = gioBatDau;
    }

    @Basic
    @Column(name = "GioKetThuc")
    public Serializable getGioKetThuc() {
        return gioKetThuc;
    }

    public void setGioKetThuc(Serializable gioKetThuc) {
        this.gioKetThuc = gioKetThuc;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        QuytrinhvatsuaEntity that = (QuytrinhvatsuaEntity) o;

        if (maQuyTrinh != that.maQuyTrinh) return false;
        if (maSoChuong != null ? !maSoChuong.equals(that.maSoChuong) : that.maSoChuong != null) return false;
        if (maNhanVien != null ? !maNhanVien.equals(that.maNhanVien) : that.maNhanVien != null) return false;
        if (ngayThucHien != null ? !ngayThucHien.equals(that.ngayThucHien) : that.ngayThucHien != null) return false;
        if (gioBatDau != null ? !gioBatDau.equals(that.gioBatDau) : that.gioBatDau != null) return false;
        if (gioKetThuc != null ? !gioKetThuc.equals(that.gioKetThuc) : that.gioKetThuc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maQuyTrinh;
        result = 31 * result + (maSoChuong != null ? maSoChuong.hashCode() : 0);
        result = 31 * result + (maNhanVien != null ? maNhanVien.hashCode() : 0);
        result = 31 * result + (ngayThucHien != null ? ngayThucHien.hashCode() : 0);
        result = 31 * result + (gioBatDau != null ? gioBatDau.hashCode() : 0);
        result = 31 * result + (gioKetThuc != null ? gioKetThuc.hashCode() : 0);
        return result;
    }
}
