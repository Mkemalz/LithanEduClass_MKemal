<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- style -->
	<link rel="stylesheet" href="css/confirmation.css">
</head>
<body>

<div class="container">
        <div class="row">
            <h1>Forgot Password</h1>
            <p>enter your email to change the password<br></p>
		
		<form action="forgotpass" method="post" >
                        <div class="form-floating mb-3" >
                            <input type="email" class="form-control border-3" id="floatingInput"
                                placeholder="name@example.com" name="email" required style="border-radius: 20px;">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-block my-4 rounded-5">Submit</button>
                        </div>
                    </form>
            
        </div>
    </div>



	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>