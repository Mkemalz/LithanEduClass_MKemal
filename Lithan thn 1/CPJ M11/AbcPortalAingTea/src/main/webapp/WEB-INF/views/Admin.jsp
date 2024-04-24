<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 <!-- CSS Bootstrap -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
	<!-- JS Bootstrap -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>
   <%--  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
      <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
      <link href="<%= request.getParameter("isNested") == null ? "css/zephyr.css" : request.getParameter("isNested") %>" rel="stylesheet">
      <link href="css/over.css" rel="stylesheet"> --%>
</head>
<body>
     <%@ include file="Header.jsp" %>

    <div class="row justify-content-center">
 
            <div class="col-lg-3 bg-light rounded-3 m-3 d-flex p-2" style="box-shadow: 6px 9px 8px 0px rgba(0,0,0,0.75);">
                <div>
                  <h1 ><a href="Send_bulk" style="text-decoration: none; color: black;">Send Email</a></h1>
                </div>
            </div>
        </div>

 
       <div class="container">
	<table class="table table-hover my-3">
	    <thead>
	      <tr>
	        <th scope="col">#</th>
	        <th scope="col">FirstName</th>
	        <th scope="col">LastName</th>
	        <th scope="col">DateofBirth</th>
	        <th scope="col">Education</th>
	         <th scope="col">Jobs Experience</th>
	          <th scope="col">Skill</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<% int i = 1; %>
		   	<c:forEach var="user" items="${users}">
	   		  <tr>
		        <th scope="row"><%= i++ %></th>
		        <td>${user.getFirstName()}</td>
		          <td>${user.getLastName()}</td>
		           <td>${user.getDateofbirth()}</td>
		            <td>${user.getJobsExperience()}</td>
		             <td>${user.getEducation()}</td>
		         	<td>${user.getSkill()}</td>
		        <%-- <td>${user.getUser().getEmail()}</td>
		        <td>${user.getTitle() == null ? "-" : user.getTitle()}</td>
 --%>		        <td>
		          <a href="Profile/${user.getUserId()}">Edit</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#deleteModal${user.getUserId()}">Delete</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}">Detail</a>
		        </td>
		      </tr>
		      
		      <!-- delete confirmation -->
					<div class="modal fade" id="deleteModal${user.getUserId()}" tabindex="-1"
						aria-labelledby="deleteModalLabel" aria-hidden="true"
						style="z-index: 2000;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Delete
										${user.getFirstName()}</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">You want to really delete this
									${user.getUserId()}?</div>
								<div class="modal-footer">
									<a href="#" class="btn btn-outline-secondary"
										data-bs-dismiss="modal">Cancel</a> <a
										href="delete/${user.getUserId()}"
										class="btn btn-outline-danger">Delete</a>
								</div>
							</div>
						</div>
					</div>
		      
		<%--       <!-- delete confirmation -->
				<div class="modal fade" id="deleteModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete ${user.getFirstName()}</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        You want to really delete this ${user.getUserId()}?
				      </div>
				      <div class="modal-footer">
				        <a href="delete/${user.getUserId()}" class="btn btn-outline-danger">Delete</a>
				      </div>
				    </div>
				  </div>
				</div> --%>
				
				<!-- detail -->
				 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Detail</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <ul class="list-group list-group-flush">
				          <li class="list-group-item">
				            <h4>First Name</h4>
				            <p>${user.getFirstName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Last Name</h4>
				            <p>${user.getLastName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Jobs Experience</h4>
				            <p>${user.getJobsExperience()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Jobs</h4>
				            <p>${user.getEducation()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Skill</h4>
				            <p>${user.getSkill()}</p>
				          </li>
				        </ul>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
			  	</div>
			   </div>
			   
		   	</c:forEach>
	    </tbody>
	  </table>
</div>
</body>
</html>