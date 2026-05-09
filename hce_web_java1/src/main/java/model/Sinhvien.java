package model;

public class Sinhvien {

    private String id;
    private String hoten;
    private String anh;
    private String lop;
    private String email;
    private String sodienthoai;

    public Sinhvien() {
    }

    public Sinhvien(String id, String hoten, String anh,
                     String lop, String email, String sodienthoai) {

        this.id = id;
        this.hoten = hoten;
        this.anh = anh;
        this.lop = lop;
        this.email = email;
        this.sodienthoai = sodienthoai;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }
}