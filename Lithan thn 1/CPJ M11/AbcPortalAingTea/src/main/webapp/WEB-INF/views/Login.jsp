<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
      
      <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>

    <title>Login</title>
  </head>
  <body style="background-color: #CAF982; overflow-x: hidden;">
     <%@ include file="Header1.jsp" %>

    <div class="container d-flex justify-content-center ">
      <div class=" text-center flex-column  p-4 " style="width:200vh; height: 50vh; margin:150px; background-color: #D7D7D7;">
        <form action="Login" method="post" onsubmit="return validRes()" class=" needs-validation" novalidate>
          <div class="row">
        <%--   <div class="alert alert-danger">
           ${message}
          </div> --%>
            <div>
              <label for="">Email</label><br>
              <input type="email" name=Email required>
              <div class="invalid-feedback">
                            Email address should be have @ and .
                        </div>
            </div>
            <br>
            <div>
              <label for="">Password</label><br>
              <input type="password"  name=Password required>
              <div class="invalid-feedback">
                            Enter Password .
                        </div>
            </div>
          </div>
          <br>
          <a href="ForgetPassword">Forget Password</a>
          <div class="mt-5">
            <input type="submit" name="" value="login">
          </div>
        </form>

      </div>
    </div>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (() => {
            'use strict'

            const forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</html>