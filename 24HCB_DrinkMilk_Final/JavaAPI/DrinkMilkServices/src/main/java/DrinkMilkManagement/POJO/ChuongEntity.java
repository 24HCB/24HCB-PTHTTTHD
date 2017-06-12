package DrinkMilkManagement.POJO;

import javax.persistence.*;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "CHUONG", schema = "dbo", catalog = "DrinkMilk")
public class ChuongEntity {
    private int maSoChuong;
    private Integer maCoSo;
    private String diaChiChuong;

    @Id
    @Column(name = "MaSoChuong")
    public int getMaSoChuong() {
        return maSoChuong;
    }

    public void setMaSoChuong(int maSoChuong) {
        this.maSoChuong = maSoChuong;
    }

    @Basic
    @Column(name = "MaCoSo")
    public Integer getMaCoSo() {
        return maCoSo;
    }

    public void setMaCoSo(Integer maCoSo) {
        this.maCoSo = maCoSo;
    }

    @Basic
    @Column(name = "DiaChiChuong")
    public String getDiaChiChuong() {
        return diaChiChuong;
    }

    public void setDiaChiChuong(String diaChiChuong) {
        this.diaChiChuong = diaChiChuong;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ChuongEntity that = (ChuongEntity) o;

        if (maSoChuong != that.maSoChuong) return false;
        if (maCoSo != null ? !maCoSo.equals(that.maCoSo) : that.maCoSo != null) return false;
        if (diaChiChuong != null ? !diaChiChuong.equals(that.diaChiChuong) : that.diaChiChuong != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maSoChuong;
        result = 31 * result + (maCoSo != null ? maCoSo.hashCode() : 0);
        result = 31 * result + (diaChiChuong != null ? diaChiChuong.hashCode() : 0);
        return result;
    }
}
