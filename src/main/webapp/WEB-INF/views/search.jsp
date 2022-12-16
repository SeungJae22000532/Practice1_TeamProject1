<%--
  Created by IntelliJ IDEA.
  User: tmdwo
  Date: 2022-12-16
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<table>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
        <title>게시판</title>
        <script>
            function delete_ok(id){
                var a =confirm("정말로 삭제하겠습니까?");
                if(a) location.href='deleteok/' + id;
            }
        </script>
    </head>
    <body>
    <header class="navbar navbar-expand-md navbar-dark fixed-top bg-black">
        <div class="d-flex justify-content-between">
            <a class="navbar-brand mr-auto" href="#">Contact-info Service</a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <form role="search" class="d-flex" action="search" method="post">
                    <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" name="subject">
                    <button class="btn btn-outline-success me-2" type="submit">Search</button>
                </form>
                <button class="btn btn-outline-primary me-2" style="width:170px" onclick="location.href='add'">New Post</button>
                <button class="btn btn-outline-warning" onclick="location.href='../login/logout'">Logout</button>
            </div>
        </div>
    </header>
    <div class="container-fluid mt-5">
        <div class="row">
            <h2 class="mt-3">Contact Information</h2>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Subject</th>
                        <th scope="col">Professor Name</th>
                        <th scope="col">Professor Email</th>
                        <th scope="col">TA Name</th>
                        <th scope="col">TA Email</th>
                        <th scope="col">Zoom Address</th>
                        <th scope="col">Office</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${contactVO.seq}</td>
                            <td>${contactVO.subject}</td>
                            <td>${contactVO.pName}</td>
                            <td>${contactVO.pMail}</td>
                            <td>${contactVO.tName}</td>
                            <td>${contactVO.tMail}</td>
                            <td>${contactVO.zAddress}</td>
                            <td>${contactVO.office}</td>
                            <td><a href="editform/${contactVO.seq}">Edit</a></td>
                            <td><a href="javascript:delete_ok('${contactVO.seq}')">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </body>
</table>
</html>
