package DrinkMilkManagement.POJO;

import javax.persistence.*;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "NHANVIEN", schema = "dbo", catalog = "DrinkMilk")
public class NhanvienEntity {
    private int maNv;
    private String tenNhanVien;
    private String cmnd;
    private String soDienThoai;
    private String username;
    private String password;

    @Id
    @Column(name = "MaNV")
    public int getMaNv() {
        return maNv;
    }

    public void setMaNv(int maNv) {
        this.maNv = maNv;
    }

    @Basic
    @Column(name = "TenNhanVien")
    public String getTenNhanVien() {
        return tenNhanVien;
    }

    public void setTenNhanVien(String tenNhanVien) {
        this.tenNhanVien = tenNhanVien;
    }

    @Basic
    @Column(name = "CMND")
    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    @Basic
    @Column(name = "SoDienThoai")
    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NhanvienEntity that = (NhanvienEntity) o;

        if (maNv != that.maNv) return false;
        if (tenNhanVien != null ? !tenNhanVien.equals(that.tenNhanVien) : that.tenNhanVien != null) return false;
        if (cmnd != null ? !cmnd.equals(that.cmnd) : that.cmnd != null) return false;
        if (soDienThoai != null ? !soDienThoai.equals(that.soDienThoai) : that.soDienThoai != null) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maNv;
        result = 31 * result + (tenNhanVien != null ? tenNhanVien.hashCode() : 0);
        result = 31 * result + (cmnd != null ? cmnd.hashCode() : 0);
        result = 31 * result + (soDienThoai != null ? soDienThoai.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }
}
