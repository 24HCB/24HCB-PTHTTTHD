package DrinkMilkManagement.POJO;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "PHANPHOI", schema = "dbo", catalog = "DrinkMilk")
public class PhanphoiEntity {
    private int maPhanPhoi;
    private Integer maNhaSx;
    private Integer maBonChua;
    private Serializable ngayPp;

    @Id
    @Column(name = "MaPhanPhoi")
    public int getMaPhanPhoi() {
        return maPhanPhoi;
    }

    public void setMaPhanPhoi(int maPhanPhoi) {
        this.maPhanPhoi = maPhanPhoi;
    }

    @Basic
    @Column(name = "MaNhaSX")
    public Integer getMaNhaSx() {
        return maNhaSx;
    }

    public void setMaNhaSx(Integer maNhaSx) {
        this.maNhaSx = maNhaSx;
    }

    @Basic
    @Column(name = "MaBonChua")
    public Integer getMaBonChua() {
        return maBonChua;
    }

    public void setMaBonChua(Integer maBonChua) {
        this.maBonChua = maBonChua;
    }

    @Basic
    @Column(name = "NgayPP")
    public Serializable getNgayPp() {
        return ngayPp;
    }

    public void setNgayPp(Serializable ngayPp) {
        this.ngayPp = ngayPp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PhanphoiEntity that = (PhanphoiEntity) o;

        if (maPhanPhoi != that.maPhanPhoi) return false;
        if (maNhaSx != null ? !maNhaSx.equals(that.maNhaSx) : that.maNhaSx != null) return false;
        if (maBonChua != null ? !maBonChua.equals(that.maBonChua) : that.maBonChua != null) return false;
        if (ngayPp != null ? !ngayPp.equals(that.ngayPp) : that.ngayPp != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maPhanPhoi;
        result = 31 * result + (maNhaSx != null ? maNhaSx.hashCode() : 0);
        result = 31 * result + (maBonChua != null ? maBonChua.hashCode() : 0);
        result = 31 * result + (ngayPp != null ? ngayPp.hashCode() : 0);
        return result;
    }
}
