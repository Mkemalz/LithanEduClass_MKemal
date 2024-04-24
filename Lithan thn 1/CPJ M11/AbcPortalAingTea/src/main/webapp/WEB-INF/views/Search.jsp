<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body style="background-color: #CAF982 ; overflow-x: hidden; ">
    <%@ include file="Header.jsp" %>
   
   
<%--    <div class="container">
    <form action="" method="get" class="mb-4">
    	<h1>Search Other</h1>
    	<input type="text" class="form-control" name="q" placeholder="Search Other" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
   	    <div id="searchHelp" class="form-text">Press enter to search</div>
    </form>

    <div>
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
	           <div>
	           	<h2>${s.getFirstName()} ${s.getlastName()}</h2>
	           	<p>${s.getTitle()}</p>
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-outline-info ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div> --%>
   
   
   
    <section>
        <div class="container ">
        <form action="" method="get"  class="mb-4">
            <h1>Search Other</h1>
            <input type="text" class="form-control" placeholder="Search Other" name="q" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>" >
               <div class="form-text">Press enter to search</div>
        </form>
    </div>
<div class="container h-50">

			<h1 class="text-center">${notFound == true ? "Not Found" : ""}</h1>
			<c:forEach var="s" items="${selected}">
				<div class="card col-lg-9 mb-3 border rounded-4">
					<div class="col-lg-12  ">
						<div class="card-body d-flex justify-content-around">
							<div class="col-lg-2">
								<img src="img/per.png" class="rounded-circle img-fluid"
									alt=" randomIMG" width="50%">
							</div>
							<div class="col-lg-6">
								<h2 class="card-title">${s.getFirstName()}</h2>
								<p class="card-text">${s.getLastName()}</p>
							</div>
							<div class="col-lg-2">
							<form action="Result" method="post">
								<input type="hidden" name="uId" value=" ${s.getUserId()}">
								<button class="btn btn-outline-primary" type="submit">View Profile</button>
							</form>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
      </section>
      
  <div style"heigt:auto">
  <%@ include file="Footer.jsp" %>
  </div>
     
</body>
</html>