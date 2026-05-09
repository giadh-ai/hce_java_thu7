<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="model.Sinhvien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    List<Sinhvien> ds = new ArrayList<Sinhvien>();
    ds= Taods_sv.getAllSinhvien();
    String tenlop = "HCE_JAVA_K20";
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