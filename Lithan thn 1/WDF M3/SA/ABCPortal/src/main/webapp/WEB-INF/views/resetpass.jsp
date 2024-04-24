<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- style -->
	<link rel="stylesheet" href="css/confirmation.css">
</head>
<body>

<div class="container">
        <div class="row">
            <h1>Reset Password</h1>
		
		<form action="resetpass" method="post" onsubmit="return validateForm()">
			 <div class="mb-3">
				<label for="password" class="form-label"><strong>New Password</strong></label>
				<input type="password" class="form-control" id="password" name="password" required style="border-radius: 20px;">
			</div>
			<div class="mb-3">
				 <label for="passwordConfirmation" class="form-label"><strong>Password Confirmation</strong></label>
				 <input type="password" class="form-control" id="confpass" required style="border-radius: 20px;">
			</div>
			<div class="text-center">
				 <button type="submit" class="btn btn-primary rounded-5 my-4 px-5 py-2">CHANGE PASSWORD</button>
			 </div>
		</form>
            
        </div>
    </div>



	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>