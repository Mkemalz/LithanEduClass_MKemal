<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="css/regis.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
<style>
.navbar{
    background-color: rgb(255, 255, 255);
    position: sticky;
    top: 0;
    left: 0;
    z-index: 999;
}

.input-group {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
}

.input-group .form-group {
    width: 31%; /* Lebar masing-masing input */
}

.input-group .form-group.full-width {
    width: 100%; /* Lebar input penuh */
}
</style>
</head>
<body style="background:url(img/pexels-antoni-shkraba-4348401.jpg) no-repeat; background-size:cover;
  
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
                <a href="registration" class="btn btn-outline-success" type="submit">Register</a>
            </form>
        </div>
    </div>
</nav>
<div class="container">
    <div class="card p-5 my-5" style=" box-shadow: 3px 2px 10px 4px #888888; background-color: rgba(255, 255, 255, 0.13); backdrop-filter: blur(20px);">
        <div class="row justify-content-center align-items-center">
        
        <div class="col-md-6">
                    <img src="img/register.png" alt="" class="img-fluid " style="height:300px;">
                </div>
                
            <div class="col-md-6">
                <div class="header mb-4">
                    <h1>Register</h1>
                    <p>Come join us, become the ABC Jobs family</p>
                </div>
                <form action="registration" method="post" onsubmit="return validRes()" class="needs-validation"
                    novalidate>
                    <div class="input-group">
                        <div class="form-group">
                            <label for="firstname" class="form-label text-light">First Name</label>
                            <input type="text" class="form-control" placeholder="First Name" name="firstName" maxlength="50" required style="height:50px; width:100%; border-radius:30px;">
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="form-label text-light">Last Name</label>
                            <input type="text" class="form-control" placeholder="Last Name" name="lastName" maxlength="50" required style="height:50px; width:100%; border-radius:30px;">
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-label text-light">Email</label>
                            <input type="email" class="form-control" placeholder="Email Address" name="email" maxlength="50" required style="height:50px; width:100%; border-radius:30px;">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="form-group">
                            <label for="location" class="form-label text-light">Location</label>
                            <input type="text" class="form-control" placeholder="Location" name="city" maxlength="100" required style="height:50px; border-radius:30px;">
                        </div>
                        <div class="form-group">
                            <label for="password" class="form-label text-light">Password</label>
                            <input type="password" class="form-control" placeholder="Password" name="password" maxlength="15" required style="height:50px; border-radius:30px;">
                        </div>
                        <div class="form-group">
                            <label for="confirm_password" class="form-label text-light">Confirm Password</label>
                            <input type="password" class="form-control" placeholder="Confirm Password" id="confPass" name="confPass" maxlength="15" required style="height:50px; border-radius:30px;">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block rounded-5" style="width:100%; height:50px;">Sign Up</button>
                    <div class="text-center mt-3">
                        <span class="d-inline">Already have an account? <a href="login" class="d-inline text-decoration-none">Sign In</a></span>
                    </div>
                </form>
            </div>
            
            
        </div>
    </div>
</div>
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
