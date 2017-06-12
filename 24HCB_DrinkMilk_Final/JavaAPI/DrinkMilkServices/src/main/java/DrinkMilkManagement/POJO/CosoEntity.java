package DrinkMilkManagement.POJO;

import javax.persistence.*;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "COSO", schema = "dbo", catalog = "DrinkMilk")
public class CosoEntity {
    private int maCs;
    private String diaChiCs;
    private Integer maTruSo;
    private Integer nguoiQuanLy;

    @Id
    @Column(name = "MaCS")
    public int getMaCs() {
        return maCs;
    }

    public void setMaCs(int maCs) {
        this.maCs = maCs;
    }

    @Basic
    @Column(name = "DiaChiCS")
    public String getDiaChiCs() {
        return diaChiCs;
    }

    public void setDiaChiCs(String diaChiCs) {
        this.diaChiCs = diaChiCs;
    }

    @Basic
    @Column(name = "MaTruSo")
    public Integer getMaTruSo() {
        return maTruSo;
    }

    public void setMaTruSo(Integer maTruSo) {
        this.maTruSo = maTruSo;
    }

    @Basic
    @Column(name = "NguoiQuanLy")
    public Integer getNguoiQuanLy() {
        return nguoiQuanLy;
    }

    public void setNguoiQuanLy(Integer nguoiQuanLy) {
        this.nguoiQuanLy = nguoiQuanLy;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CosoEntity that = (CosoEntity) o;

        if (maCs != that.maCs) return false;
        if (diaChiCs != null ? !diaChiCs.equals(that.diaChiCs) : that.diaChiCs != null) return false;
        if (maTruSo != null ? !maTruSo.equals(that.maTruSo) : that.maTruSo != null) return false;
        if (nguoiQuanLy != null ? !nguoiQuanLy.equals(that.nguoiQuanLy) : that.nguoiQuanLy != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maCs;
        result = 31 * result + (diaChiCs != null ? diaChiCs.hashCode() : 0);
        result = 31 * result + (maTruSo != null ? maTruSo.hashCode() : 0);
        result = 31 * result + (nguoiQuanLy != null ? nguoiQuanLy.hashCode() : 0);
        return result;
    }
}
