package DrinkMilkManagement.POJO;

import javax.persistence.Entity;
import javax.persistence.IdClass;
import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by AnSon on 11/06/2017.
 */
@Entity
public class CtquytrinhEntity implements Serializable  {
    private int maQuyTrinh;
    private int maSoChip;
    private Integer soLuongSua;
    private String tinhTrangBauVu;

    public int getMaQuyTrinh() {
        return maQuyTrinh;
    }

    public void setMaQuyTrinh(int maQuyTrinh) {
        this.maQuyTrinh = maQuyTrinh;
    }

    public int getMaSoChip() {
        return maSoChip;
    }

    public void setMaSoChip(int maSoChip) {
        this.maSoChip = maSoChip;
    }

    public Integer getSoLuongSua() {
        return soLuongSua;
    }

    public void setSoLuongSua(Integer soLuongSua) {
        this.soLuongSua = soLuongSua;
    }

    public String getTinhTrangBauVu() {
        return tinhTrangBauVu;
    }

    public void setTinhTrangBauVu(String tinhTrangBauVu) {
        this.tinhTrangBauVu = tinhTrangBauVu;
    }

    /*@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CtquytrinhEntity that = (CtquytrinhEntity) o;

        if (maQuyTrinh != that.maQuyTrinh) return false;
        if (maSoChip != that.maSoChip) return false;
        if (soLuongSua != null ? !soLuongSua.equals(that.soLuongSua) : that.soLuongSua != null) return false;
        if (tinhTrangBauVu != null ? !tinhTrangBauVu.equals(that.tinhTrangBauVu) : that.tinhTrangBauVu != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maQuyTrinh;
        result = 31 * result + maSoChip;
        result = 31 * result + (soLuongSua != null ? soLuongSua.hashCode() : 0);
        result = 31 * result + (tinhTrangBauVu != null ? tinhTrangBauVu.hashCode() : 0);
        return result;
    }*/
}
