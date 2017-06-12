package DrinkMilkManagement.POJO;

import javax.persistence.*;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "BONCHUA", schema = "dbo", catalog = "DrinkMilk")
public class BonchuaEntity {
    private int maBonChua;
    private Integer maCoSo;
    private Integer sucChuaToiDa;
    private Integer sucChuaHienTai;

    @Id
    @Column(name = "MaBonChua")
    public int getMaBonChua() {
        return maBonChua;
    }

    public void setMaBonChua(int maBonChua) {
        this.maBonChua = maBonChua;
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
    @Column(name = "SucChuaToiDa")
    public Integer getSucChuaToiDa() {
        return sucChuaToiDa;
    }

    public void setSucChuaToiDa(Integer sucChuaToiDa) {
        this.sucChuaToiDa = sucChuaToiDa;
    }

    @Basic
    @Column(name = "SucChuaHienTai")
    public Integer getSucChuaHienTai() {
        return sucChuaHienTai;
    }

    public void setSucChuaHienTai(Integer sucChuaHienTai) {
        this.sucChuaHienTai = sucChuaHienTai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BonchuaEntity that = (BonchuaEntity) o;

        if (maBonChua != that.maBonChua) return false;
        if (maCoSo != null ? !maCoSo.equals(that.maCoSo) : that.maCoSo != null) return false;
        if (sucChuaToiDa != null ? !sucChuaToiDa.equals(that.sucChuaToiDa) : that.sucChuaToiDa != null) return false;
        if (sucChuaHienTai != null ? !sucChuaHienTai.equals(that.sucChuaHienTai) : that.sucChuaHienTai != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maBonChua;
        result = 31 * result + (maCoSo != null ? maCoSo.hashCode() : 0);
        result = 31 * result + (sucChuaToiDa != null ? sucChuaToiDa.hashCode() : 0);
        result = 31 * result + (sucChuaHienTai != null ? sucChuaHienTai.hashCode() : 0);
        return result;
    }
}
