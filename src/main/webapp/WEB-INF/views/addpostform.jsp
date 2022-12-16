<%--
  Created by IntelliJ IDEA.
  User: tmdwo
  Date: 2022-12-05
  Time: 오후 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <title>New Post</title>
</head>
<body class="bg-light">
<div class="container">
    <main>
        <div class="py-5 text-center">
            <h2>Add post form</h2>
        </div>
        <div class="row g-5">
            <div class="col-md col-lg">
                <h4 class="mb-3">Contact Information</h4>
                <form class="needs-validation" novalidate="" action="addok" method="post">
                    <div class="row g-3 mb-3">
                        <div class="col-12">
                            <label class="form-label">Subject</label>
                            <input type="text" class="form-control" name="subject" placeholder="실전프로젝트1" required="">
                            <div class="invalid-feedback">
                                Your subject is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">Professor Name</label>
                            <input type="text" class="form-control" name="pName" placeholder="장소연 교수님" required="">
                            <div class="invalid-feedback">
                                Your professor name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">Professor Email</label>
                            <input type="email" class="form-control" name="pMail" placeholder="jerry1004@handong.edu" required="">
                            <div class="invalid-feedback">
                                Your professor email is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">TA Name</label>
                            <input type="text" class="form-control" name="tName" placeholder="정수산나 TA" required="">
                            <div class="invalid-feedback">
                                Your TA name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">TA Email</label>
                            <input type="email" class="form-control" name="tMail" placeholder="sanna422@handong.ac.kr" required="">
                            <div class="invalid-feedback">
                                Your TA email is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Zoom Address</label>
                            <input type="email" class="form-control" name="zAddress" placeholder="" required="">
                            <div class="invalid-feedback">
                                Your zoom address is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Office</label>
                            <input type="text" class="form-control" name="office" placeholder="NTH 205" required="">
                            <div class="invalid-feedback">
                                Your office is required.
                            </div>
                        </div>
                    </div>
                    <button class="w-25 btn btn-primary btn-lg" type="reset">Reset</button>
                    <button class="w-25 btn btn-primary btn-lg" type="button" onclick="location.href='list'">List</button>
                    <button class="w-25 btn btn-primary btn-lg" type="submit">Submit</button>
                </form>
            </div>
        </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2022-2 실전프로젝트1 Team Project 윤하은, 이승재</p>
    </footer>
</div>
</body>
</html>