<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body style="background-color: #CAF982 ; overflow-x: hidden; ">
     <%@ include file="Header1.jsp" %>

      <div class="container  p-5 ">
        <h2>Forget Password</h2>
        <p>Enter your email and we'll send you a link to reset your password</p>
        <!-- <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
              ${message}
        </div> -->
        <form action="ForgetPassword" method="post">
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="Email" required >
                <label for="floatingInput">Email address</label>
                <div class="invalid-feedback">
                      Email address should be have @ and .
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Reset your password</button>
        </form>
    </div>
</body>
</html>