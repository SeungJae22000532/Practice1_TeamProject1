<%--
  Created by IntelliJ IDEA.
  User: tmdwo
  Date: 2022-12-05
  Time: 오후 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <title>Edit Post</title>
</head>
<body class="bg-light">
<div class="container">
    <main>
        <div class="py-5 text-center">
            <h2>Edit post form</h2>
        </div>
        <div class="row g-5">
            <div class="col-md col-lg">
                <h4 class="mb-3">Contact Information</h4>
                <form:form modelAttribute="contactVO" class="needs-validation" novalidate="" action="../editok" method="post">
                    <form:hidden path="seq" />
                    <table id="edit">
                    <div class="row g-3 mb-3">
                        <div class="col-12">
                            <label class="form-label">Subject</label>
                            <form:input class="form-control" path="subject" />
                            <div class="invalid-feedback">
                                Your subject is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">Professor Name</label>
                            <form:input class="form-control" path="pName"/>
                            <div class="invalid-feedback">
                                Your professor name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">Professor Email</label>
                            <form:input class="form-control" path="pMail"/>
                            <div class="invalid-feedback">
                                Your professor email is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">TA Name</label>
                            <form:input class="form-control" path="tName"/>
                            <div class="invalid-feedback">
                                Your TA name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label class="form-label">TA Email</label>
                            <form:input class="form-control" path="tMail"/>
                            <div class="invalid-feedback">
                                Your TA email is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Zoom Address</label>
                            <form:input class="form-control" path="zAddress"/>
                            <div class="invalid-feedback">
                                Your zoom address is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Office</label>
                            <form:input class="form-control" path="office"/>
                            <div class="invalid-feedback">
                                Your office is required.
                            </div>
                        </div>
                    </div>
                    </table>
                    <button class="w-25 btn btn-primary btn-lg" type="reset" value="">Reset</button>
                    <button class="w-25 btn btn-primary btn-lg" type="button" onclick="history.back()">Cancel</button>
                    <button class="w-25 btn btn-primary btn-lg" type="submit">Submit</button>
                </form:form>
            </div>
        </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2022-2 실전프로젝트1 Team Project 윤하은, 이승재</p>
    </footer>
</div>
</body>
</html>