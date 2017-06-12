package DrinkMilkManagement.POJO;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "BO", schema = "dbo", catalog = "DrinkMilk")
public class BoEntity {
    private int maSoChip;
    private Date ngayNhap;
    private Integer canNang;
    private String mauSac;
    private String dacDiemNhanDien;
    private Boolean diTat;

    @Id
    @Column(name = "MaSoChip")
    public int getMaSoChip() {
        return maSoChip;
    }

    public void setMaSoChip(int maSoChip) {
        this.maSoChip = maSoChip;
    }

    @Basic
    @Column(name = "NgayNhap")
    public Date getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(Date ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    @Basic
    @Column(name = "CanNang")
    public Integer getCanNang() {
        return canNang;
    }

    public void setCanNang(Integer canNang) {
        this.canNang = canNang;
    }

    @Basic
    @Column(name = "MauSac")
    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    @Basic
    @Column(name = "DacDiemNhanDien")
    public String getDacDiemNhanDien() {
        return dacDiemNhanDien;
    }

    public void setDacDiemNhanDien(String dacDiemNhanDien) {
        this.dacDiemNhanDien = dacDiemNhanDien;
    }

    @Basic
    @Column(name = "DiTat")
    public Boolean getDiTat() {
        return diTat;
    }

    public void setDiTat(Boolean diTat) {
        this.diTat = diTat;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BoEntity boEntity = (BoEntity) o;

        if (maSoChip != boEntity.maSoChip) return false;
        if (ngayNhap != null ? !ngayNhap.equals(boEntity.ngayNhap) : boEntity.ngayNhap != null) return false;
        if (canNang != null ? !canNang.equals(boEntity.canNang) : boEntity.canNang != null) return false;
        if (mauSac != null ? !mauSac.equals(boEntity.mauSac) : boEntity.mauSac != null) return false;
        if (dacDiemNhanDien != null ? !dacDiemNhanDien.equals(boEntity.dacDiemNhanDien) : boEntity.dacDiemNhanDien != null)
            return false;
        if (diTat != null ? !diTat.equals(boEntity.diTat) : boEntity.diTat != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maSoChip;
        result = 31 * result + (ngayNhap != null ? ngayNhap.hashCode() : 0);
        result = 31 * result + (canNang != null ? canNang.hashCode() : 0);
        result = 31 * result + (mauSac != null ? mauSac.hashCode() : 0);
        result = 31 * result + (dacDiemNhanDien != null ? dacDiemNhanDien.hashCode() : 0);
        result = 31 * result + (diTat != null ? diTat.hashCode() : 0);
        return result;
    }
}
