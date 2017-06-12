package DrinkMilkManagement.POJO;

import javax.persistence.*;

/**
 * Created by AnSon on 10/06/2017.
 */
@Entity
@Table(name = "TRUSO", schema = "dbo", catalog = "DrinkMilk")
public class TrusoEntity {
    private int maTruSo;
    private String diaChiTruSo;

    @Id
    @Column(name = "MaTruSo")
    public int getMaTruSo() {
        return maTruSo;
    }

    public void setMaTruSo(int maTruSo) {
        this.maTruSo = maTruSo;
    }

    @Basic
    @Column(name = "DiaChiTruSo")
    public String getDiaChiTruSo() {
        return diaChiTruSo;
    }

    public void setDiaChiTruSo(String diaChiTruSo) {
        this.diaChiTruSo = diaChiTruSo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TrusoEntity that = (TrusoEntity) o;

        if (maTruSo != that.maTruSo) return false;
        if (diaChiTruSo != null ? !diaChiTruSo.equals(that.diaChiTruSo) : that.diaChiTruSo != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maTruSo;
        result = 31 * result + (diaChiTruSo != null ? diaChiTruSo.hashCode() : 0);
        return result;
    }
}
