 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header3.jsp" %>
<body>
	<div class="container" >
    <form action="" method="get" class="mb-4" style="margin-top: 30px;">
    	<h1>Search Other</h1>
    	<input type="text" class="form-control" name="q" placeholder="Search Other" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
   	    <div id="searchHelp" class="form-text" >Press enter to search</div >
   	    <div style="margin-top: 20px;"></div>
    </form >

   <%--  <div class="container">
					
								<h1 class="text-center">${notFound == true ? "Not Found" : ""}</h1>
								<c:forEach var="s" items="${selected}">
									<div class="card col-lg-9 mb-3 border rounded-4">
										<div class="col-lg-12 ">
											<div class="card-body d-flex justify-content-around ">
												<div class="col-lg-2">
													<img style="" src="img/${s.split("-")[2]}" class="rounded-circle img-fluid"
														alt=" randomIMG" width="50%">
												</div>
												<div class="col-lg-6">
													<h2 class="card-title">${s.split("-")[0]}</h2>
													<p class="card-text">${s.split("-")[2]}</p>
												</div>
												<div class="col-lg-2">
												<form action="result" method="post">
													<input type="hidden" name="name" value="${s.split("-")[0]}">
													<button class="btn btn-outline-primary" type="submit">View Profile</button>
												</form>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div> --%>
							  <div>
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
	           <div>
	           	<h2>${s.getFirstName()} ${s.getLastName()}</h2>
	           
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-outline-info ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
</body >
</html>
<%@ include file="footer3.jsp" %>