<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- style -->
    <link rel="stylesheet" href="css/login.css">

    <!-- font google -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
	<section class="login d-flex">
        <div class="login-left w-50 h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-6">
                    <div class="header">
                        <h1>Welcome Back</h1>
                        <p>Come join us, become the ABC Jobs family</p>
                    </div>
        			<form class="login-form" action="login" method="Post">
                    <div>
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" placeholder="Email Address" name="email" maxlength="50"
                            required>
        
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" placeholder="Password" name="password"
                            maxlength="15" required>
                        <a href="forgotpass" class="mt-2 text-decoration-none">Forgot Password ?</a><br>
                        <button type="submit" class="btn btn-primary btn-block rounded-5">Sign In</button> <br>

                        <div class="text-center">
                            <span class="d-inline">Don't have an account ? <a href="registration" class=" d-inline text-decoration-none">Register</a></span>
                        </div>
        
                       </form>
                    </div>
                </div>
            </div>
            
        </div>  
        <div class="login-right  " >
            <div class="img">
                <img id="img1" class="" src="img/seo-2x.webp" alt="" style="height:600px;">
            </div>
        </div>
    </section>
    <div class="container">
	  <div class="card mb-3" style="align-items: center; border: none;">
		<div class="row g-0">
		  <div class="col-md-4">
			<img src="img/bg3.jpg" class="img-fluid rounded-start" alt="...">
		  </div>
		  <div class="col-md-8">
			<div class="card-body">
			  <h5 class="card-title">Card title</h5>
			  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. 
			   wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			</div>
		  </div>
		</div>
	  </div>
	</div>

    <!--===== FOOTER =====-->
<footer class="footer">
	<p class="footer__title">ABC Jobs</p>
	<div class="footer__social">
		<a href="#" class="footer__icon"><i class='bx bxl-facebook' ></i></a>
		<a href="#" class="footer__icon"><i class='bx bxl-instagram' ></i></a>
		<a href="#" class="footer__icon"><i class='bx bxl-twitter' ></i></a>
	</div>
	<p>&#169; 2023 copyright all right reserved</p>
</footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>
</html>