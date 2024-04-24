<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-light p-0 shadow mb-1 sticky-top" style="height: 80px;">
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
					
						
					
				</ul>
				<div class="d-flex">
					<a href="search"><button class="btn btn-outline-primary mx-3">Search Result</button></a>
				</div>
				<div class="d-flex">
					<a href="logout"><button class="btn btn-outline-danger" type="submit"><img src="img/logout.png" style="width: 30px;"
								alt="">Logout</button></a>
				</div>
			</div>
		</div>
	</nav>
   <div class="position-relative m-4" style="text-align: center;">
    <h2 style="margin-top: 170px;">Hello Welcome, master admin</h2>
    <a href="showUser"><button type="button" class="btn btn-outline-primary data-bs-dismiss="  aria-label="Showuser">Show all user</button></a>
    <a href="send-bulk"><button type="button" class="btn btn-outline-primary data-bs-dismiss="  aria-label="Showuser">Send Bulk</button></a>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>