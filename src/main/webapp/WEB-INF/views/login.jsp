<%--
  Created by IntelliJ IDEA.
  User: tmdwo
  Date: 2022-12-16
  Time: 오후 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body class="text-center">
<main class="m-5">
    <div class="d-flex justify-content-center">
    <img class="mb-4" src="../img/female.png" alt="" height="250">
    <img class="mb-4" src="../img/male.png" alt="" height="250">
    </div>
    <div class="d-flex justify-content-center">
    <form method="post" action="loginOk">
        <h1 class="h3 mb-3 fw-normal" style="width:500px">Please sign in</h1>
        <div class="form-floating">
            <input type="text" class="form-control" name="userid">
            <label>Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" name="password">
            <label>Password</label>
        </div>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
        <p class="mt-5 mb-3 text-muted">© 2017–2022</p>
    </form>
    </div>
</main>
</body>
</html>