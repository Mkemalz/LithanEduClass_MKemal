<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

	<!-- style -->
	<link rel="stylesheet" href="css/Home.css">
	
</head>
<body>
	<nav class="navbar navbar-expand-lg"style="box-shadow: 4px 3px 4px #100000;">
		<div class="container" style="height:80px; ">
			<a class="navbar-brand" href="#"><img src="img/logo2.png" alt="" style="width: 100px;"></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarScroll">
				<ul class="navbar-nav m-auto my-2 my-lg-0">	
				</ul>
				<form class="d-flex">
				<a href="login" class="btn btn-outline-success rounded-5" type="submit" style="text-color:red;">Sign In</a>
				</form>
			</div>
		</div>
	</nav>

	 <!-- jumbotron -->
	 <div id="background">
		<div class="jumbotron">
		  <h1 style="font-size:60px">Welcome to <span style="color:red">ABC </span>Jobs <br> Indonesia</h1>
		  <p><a href="registration" class="btn btn-light btn-lg type="submit" style="color:orange; font-weight: bold">Sign Up   </a></p>
		</div>
	  </div>
	  <!-- jumbotron -->
	

	<div class="h2">
		<h2>Frontend</h2>
		<h2>Backend</h2>
		<h2>Desain</h2>
	</div>

	
	
	<!-- container news -->
	<div id="news">
		<div class="container">
			<h1 class="populartexs">Popular professional services</h1>
		  <div class="row justify-content-center mx-4">
			<div id="card1"class="col-lg-3 col-md-3 col-sm-6 col-xs-6 ms-5 rounded-5" style="">
			  <div class="thumbnail">
			  <div class="caption">
				<h3 style="color: white; margin-top: 20px;">Picture 1</h3>
				<p style="color: white; " class="text-justify">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				
			  </div>
			  </div>
			</div>
			<div id="card2" class="col-lg-3 col-md-3 col-sm-6 col-xs-6 ms-5 " style="border-radius:30px; height:350px; width:250px;">
			  <div class="thumbnail">
			  <div class="caption">
				<h3 style="color: white; margin-top: 20px;">Picture 2</h3>
				<p style="color: white;" class="text-justify">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				
			  </div>
			  </div>
			</div>
			<div id="card3" class="col-lg-3 col-md-3 col-sm-6 col-xs-6 ms-5 rounded-5">
			  <div  class="thumbnail">
			  <div class="caption">
				<h3 style="color: white; margin-top: 20px;">Picture 3</h3>
				<p style="color: white;" class="text-justify">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				
			  </div>
			  </div>
			</div>

		  </div>
		</div>
	  </div>
	  <!-- container news -->
	  <div class="container">
		<h1 class="judulabout">Popular professional services</h1>
	  <div class="card mb-3" style="align-items: center;">
		<div class="row g-0">
		  <div class="col-md-4">
			<img src="img/bg3.jpg" class="img-fluid rounded-start" alt="...">
		  </div>
		  <div class="col-md-8">
			<div class="card-body">
			  <h5 class="card-title">Card title</h5>
			  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.  wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
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