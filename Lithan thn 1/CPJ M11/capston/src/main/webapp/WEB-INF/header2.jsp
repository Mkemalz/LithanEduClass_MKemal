<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="search.css">
<title>Profile Page</title>
</head>

<body>
	<nav
		class="navbar navbar-expand-lg bg-light p-0 shadow mb-1 sticky-top" style="height: 80px;">
		<div class="container">
			<a class="navbar-brand" href="homepage"> <img
				src="img/logo2.png" class="img-fluid d-inline-block align-top"
				alt="ABC Logo" width="100px">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarScroll">
				<ul class="navbar-nav m-auto my-2 my-lg-0">
					<li>
						<a href="admin1"><button type="button" class="btn btn-secondary position-relative mx-3">
							Home Admin <span class="position-absolute top-0 start-100 translate-middle badge"><span class="visually-hidden">unread messages</span></span>
						  </button></a>
					</li>	
					
				</ul>
				<div class="d-flex">
					<a href="search"><button class="btn btn-outline-primary mx-3">Search Result</button></a>
				</div>
				<div class="d-flex">
					<a href="logout"><button class="btn btn-outline-danger" type="submit"><img src="img/logout.png" style="width: 30px;"alt="">Logout</button></a>
				</div>
			</div>
		</div>
	</nav>