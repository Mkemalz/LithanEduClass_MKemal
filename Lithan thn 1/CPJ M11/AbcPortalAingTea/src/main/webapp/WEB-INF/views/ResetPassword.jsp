<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
  
</head>
<body style="background-color: #CAF982; " class="overflow-hidden">
    <%@ include file="Header1.jsp" %>

    <div class="container">
        <h1>Reset password</h1>
        <form action="ResetPassword" method="post"  onsubmit="return validRes()" class=" needs-validation" novalidate>
          <div class="mb-3">
            <label for="password" class="form-label">New Password</label>
            <input type="password" class="form-control" id="Password" name="Password" required>
             <div class="invalid-feedback">
                            Please Enter Correct Password.
                        </div>
          </div>
          <div class="mb-3">
            <label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
            <input type="password" class="form-control" id="Cpass" required>
            <div class="invalid-feedback">
                            Please Enter Correct Password.
                        </div>
          </div>
          <button type="submit" class="btn btn-primary">Update Password</button>
        </form>
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