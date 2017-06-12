package DrinkMilkManagement.POJO;

import java.io.Serializable;

/**
 * Created by AnSon on 11/06/2017.
 */
public class CtquytrinhEntityPK implements Serializable {
    protected int maQuyTrinh;
    protected int maSoChip;

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
    public CtquytrinhEntityPK(){}

    public CtquytrinhEntityPK(int maQuyTrinh, int maSoChip){
        this.maSoChip = maSoChip;
        this.maQuyTrinh = maQuyTrinh;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CtquytrinhEntityPK that = (CtquytrinhEntityPK) o;

        if (maQuyTrinh != that.maQuyTrinh) return false;
        if (maSoChip != that.maSoChip) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = maQuyTrinh;
        result = 31 * result + maSoChip;
        return result;
    }
}
