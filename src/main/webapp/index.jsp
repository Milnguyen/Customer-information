<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, Model.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Danh sách khách hàng</title>

    <style>
        body { font-family: Arial; }
        h2 { text-align: center; }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: #f2f2f2;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        tr { border-bottom: 1px solid #ccc; }

        img {
            width: 80px;
            height: 80px;
        }
    </style>
</head>

<body>

<h2>Danh sách khách hàng</h2>

<%
    List<Customer> list = new ArrayList<>();

    list.add(new Customer("Trần Thị Bình", "1997-08-20", "Hải Phòng", "images/a.jpg"));
    list.add(new Customer("Nguyễn Thị Ánh", "1994-07-21", "Hưng Yên", "images/b.jpg"));
    list.add(new Customer("Phạm Thị Loan", "1992-05-22", "Hà Nội", "images/c.jpg"));
    list.add(new Customer("Trịnh Quốc Việt", "1995-08-17", "Thanh Hóa", "images/d.jpg"));
    list.add(new Customer("Nguyễn Thị Hằng", "1997-04-19", "Tokyo", "images/e.jpg"));

    request.setAttribute("customers", list);
%>

<table>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>

    <c:forEach var="c" items="${customers}">
        <tr>
            <td>${c.name}</td>
            <td>${c.dob}</td>
            <td>${c.address}</td>
            <td>
                <img src="${c.image}">
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>