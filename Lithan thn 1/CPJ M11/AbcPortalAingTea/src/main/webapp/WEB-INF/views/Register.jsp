<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
    <title>Registration</title>
  </head>
  <body style="background-color: #CAF982; overflow-x: hidden;">
   <%@ include file="Header1.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <div class="container d-flex justify-content-center ">
        <div class=" text-center flex-column bg-light p-4 " style="width: 60vw; margin:150px;">
            <form action="register" method="post" onsubmit="return validRes()" class=" needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6">
                        <label for="">FirstName</label><br>
                        <input type="text" name="FirstName"   required>
                          <div class="invalid-feedback">
                            Please Enter Firstname 
                             </div>
                        
                    </div><br>
                    <div class="col-md-6">
                        <label for="">Email</label><br>
                        <input type="email" name="Email"  required>
                        <div class="invalid-feedback">
                            Please Enter Your Email 
                             </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label for="">LastName</label><br>
                        <input type="text" name="LastName"   required>
                          <div class="invalid-feedback">
                            Please Enter Lastname.
                        </div>
                    </div><br>
                    <div class="col-md-6">
                        <label for="">Password</label><br>
                        <input type="password" Name="Password" id="Password"   required>
                          <div class="invalid-feedback">
                            Please Enter Password.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label for="">Date of birth</label><br>
                        <input type="date" Name="Dateofbirth"  required>
                          <div class="invalid-feedback">
                            Please Enter DateofBirth.
                        </div>
                    </div><br>
                    <div class="col-md-6">
                        <label for="">Confirm Password</label><br>
                        <input type="password" Name="Cpass" id="Cpass"  required>
                          <div class="invalid-feedback">
                            Please Enter Correct Password.
                        </div>
                    </div>
                </div>
                <div class="mt-5">
                    <input type="submit" name="" value="Register">
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
    <script>
		function validRes() {
			const newPass = document.getElementById("Password").value;
			const newPassConf = document.getElementById("Cpass").value;

			if (newPass !== newPassConf) {
				alert("Password Does not match");
				return false;
			}
		}
	</script>
  </body>
</html>