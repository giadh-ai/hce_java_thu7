<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%!
    // =========================
    // CLASS SINHVIEN
    // =========================
    public class Sinhvien {
        private String id;
        private String hoten;
        private String anh;
        private String lop;
        private String email;
        private String sodienthoai;

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

        public String getHoten() {
            return hoten;
        }

        public String getAnh() {
            return anh;
        }

        public String getLop() {
            return lop;
        }

        public String getEmail() {
            return email;
        }

        public String getSodienthoai() {
            return sodienthoai;
        }
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="stylesheet" href="assets/css/layout.css"/>
<link rel="stylesheet" href="assets/css/fonts.css"/>
<link rel="stylesheet" href="assets/css/menu.css"/>
<link rel="stylesheet" href="assets/css/jquery.mmenu.all.css"/>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.table_sv{
    width:100%;
    border-collapse: collapse;
    margin-top:20px;
    background:#fff;
}

.table_sv th{
    background:#ff6600;
    color:white;
    padding:10px;
    border:1px solid #ddd;
}

.table_sv td{
    padding:10px;
    border:1px solid #ddd;
    text-align:center;
}

.table_sv img{
    width:80px;
    height:80px;
    border-radius:50%;
    object-fit:cover;
}

.title{
    font-size:28px;
    color:red;
    margin-top:20px;
    font-weight:bold;
}

</style>

<body>

<!-- HEADER -->
<header id="header" style="min-height: 169px;">
    <div class="header_top">
        <div class="container_main">
            <h2 style="color:white;padding:10px;">
                DEMO DANH SÁCH SINH VIÊN JSP
            </h2>
        </div>
    </div>
</header>

<%
    String tenlop = "HCE_JAVA_K20";

    // =========================
    // TẠO DANH SÁCH SINH VIÊN
    // =========================
    List<Sinhvien> ds = new ArrayList<Sinhvien>();

    ds.add(new Sinhvien("SV001","Nguyễn Văn An",
            "https://i.pravatar.cc/80?img=1",
            "CNTT01","an@gmail.com","0901111111"));

    ds.add(new Sinhvien("SV002","Trần Thị Bình",
            "https://i.pravatar.cc/80?img=2",
            "CNTT01","binh@gmail.com","0902222222"));

    ds.add(new Sinhvien("SV003","Lê Minh Cường",
            "https://i.pravatar.cc/80?img=3",
            "CNTT02","cuong@gmail.com","0903333333"));

    ds.add(new Sinhvien("SV004","Phạm Thị Dung",
            "https://i.pravatar.cc/80?img=4",
            "CNTT02","dung@gmail.com","0904444444"));

    ds.add(new Sinhvien("SV005","Hoàng Gia Huy",
            "https://i.pravatar.cc/80?img=5",
            "CNTT03","huy@gmail.com","0905555555"));

    ds.add(new Sinhvien("SV006","Đỗ Thanh Lan",
            "https://i.pravatar.cc/80?img=6",
            "CNTT03","lan@gmail.com","0906666666"));

    ds.add(new Sinhvien("SV007","Võ Quốc Nam",
            "https://i.pravatar.cc/80?img=7",
            "CNTT04","nam@gmail.com","0907777777"));

    ds.add(new Sinhvien("SV008","Bùi Khánh Ngọc",
            "https://i.pravatar.cc/80?img=8",
            "CNTT04","ngoc@gmail.com","0908888888"));

    ds.add(new Sinhvien("SV009","Nguyễn Minh Phúc",
            "https://i.pravatar.cc/80?img=9",
            "CNTT05","phuc@gmail.com","0909999999"));

    ds.add(new Sinhvien("SV010","Trương Mỹ Tiên",
            "https://i.pravatar.cc/80?img=10",
            "CNTT05","tien@gmail.com","0910000000"));
%>

<!-- CONTENT -->
<div class="news-home">
    <div class="container_main" style="min-height:600px;">

        <div class="title">
            DANH SÁCH SINH VIÊN - <%=tenlop%>
        </div>

        <table class="table_sv">

            <tr>
                <th>STT</th>
                <th>Mã SV</th>
                <th>Ảnh</th>
                <th>Họ tên</th>
                <th>Lớp</th>
                <th>Email</th>
                <th>Số điện thoại</th>
            </tr>

            <%
                int stt = 1;

                for(Sinhvien sv : ds){
            %>

            <tr>
                <td><%=stt++%></td>

                <td><%=sv.getId()%></td>

                <td>
                    <img src="<%=sv.getAnh()%>" />
                </td>

                <td><%=sv.getHoten()%></td>

                <td><%=sv.getLop()%></td>

                <td><%=sv.getEmail()%></td>

                <td><%=sv.getSodienthoai()%></td>
            </tr>

            <%
                }
            %>

        </table>

    </div>
</div>

<!-- FOOTER -->
<footer id="footer">
    <div class="copyright">
        <div class="container_main">
            <p>© 2026 Demo JSP Sinh Viên</p>
        </div>
    </div>
</footer>

</body>
</html>