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
<style>
.navbar{
  background-color: rgb(255, 255, 255);
  position: sticky;
  top: 0;
  left: 0;
  z-index: 999;
}
 

</style>
<body style="background:url(img/bglogin.jpg) no-repeat; background-size:cover;
  
  height:638px;
  ">

<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="#"><img src="img/logo2.png" alt="" style="width: 100px;"></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarScroll">
				<ul class="navbar-nav m-auto my-2 my-lg-0">	
				</ul>
				<form class="d-flex">
				<a href="login" class="btn btn-outline-success" type="submit">Register</a>
				</form>
			</div>
		</div>
	</nav>
	
	
	<div class="container">
    <div class="card p-5 my-5" style="box-shadow: 3px 2px 10px 4px #888888; width:100%; border-radius: 50px; background-color: rgba(255, 255, 255, 0.13); backdrop-filter: blur(20px);">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6">
                <div class="header mb-4">
                    <h1>Welcome Back</h1>
                    <p>Come join us, become the ABC Jobs family</p>
                </div>
                <form class="login-form" action="login" method="Post">
                    <div class="form-group">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" placeholder="Email Address" name="email" maxlength="50"
                            required style="height:70px; border-radius:30px;">
                    </div>
                    <div class="form-group">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" placeholder="Password" name="password"
                            maxlength="15" required style="height:70px; border-radius:30px;">
                        <a href="forgotpass" class="mt-2 text-decoration-none">Forgot Password ?</a>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block rounded-5"
                        style="width:100%; height:50px;">Sign In</button>
                    <div class="text-center mt-3">
                        <span class="d-inline">Don't have an account? <a href="registration"
                                class="d-inline text-decoration-none">Register</a></span>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <img src="img/bglogin.jpg" alt="" class="img-fluid" style="height:500px; border-radius:10px;">
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