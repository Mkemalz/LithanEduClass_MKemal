<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header2.jsp" %>
<body>
	<div class="container mt-4">
		<table class="table">
			<thead>
			<tr>
				<th>ID</th>
				<th>User name</th>
				<th>Email</th>
				<th>City</th>
				<th>Action</th>
			</tr>
			</thead>
			
			</thead>
	    <tbody>
	    	<% int i = 1; %>
		   	<c:forEach var="u" items="${users}">
	   		  <tr>
		        <th scope="row"><%= i++ %></th>
		        <td> ${u.getFirstName()} ${u.getLastName()}</td>
		        <td>${u.getUser().getEmail()}</td>
		        <td> ${u.getCity()}</td>
		        <td>
		          <a href=""data-bs-toggle="modal" data-bs-target="#editModal${u.getUserId()}">Edit</a>          
		          <a href="" data-bs-toggle="modal" data-bs-target="#deleteModal${u.getUserId()}">Delete</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#detailModal${u.getUserId()}">Detail</a>
		        </td>
		      </tr>
		      
		      <!-- delete confirmation -->
				<div class="modal fade" id="deleteModal${u.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete ${u.getFirstName()}</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        You want to really delete this user ${u.getUserId()}?
				      </div>
				      <div class="modal-footer">
				        <a href="delete/${u.getUserId()}" class="btn btn-outline-danger">Delete</a>
				      </div>
				    </div>
				  </div>
				</div>
				
	<!-- Modal -->
   	 <div class="modal fade" id="editModal${u.getUserId()}" tabindex="-1" aria-labelledby="editModal"
        aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style=" box-shadow: 1px 1px 5px black, 0 0 35px blue, 0 0 5px darkblue;">
                <div class="modal-header">
                    <h5 class=" modal-title" id="editModalLabel">Edit</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form:form action="update-profile" modelAttribute="profile" method="post">
                <input type="text" name="userDetailsId" value="${id}">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="name" class="form-label">First Name</label> <input type="text"
                                class="form-control" id="firstName" name="firstName" value="${u.getFirstName()}" required>
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Last Name</label> <input type="text"
                                class="form-control" id="lastName" name="lastName" value="${u.getLastName()}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label> <input type="email"
                                class="form-control" id="email" name="email" value="${u.getUser().getEmail()}" required>
                        </div>
                        <div class="mb-3">
                            <label for="location" class="form-label">Location</label> <input type="text"
                                class="form-control" id="location" name="city" value="${u.getCity() }" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save
                            changes</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
				
				<!-- detail -->
				 <div class="modal fade" id="detailModal${u.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Detail</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <ul class="list-group list-group-flush">
				          <li class="list-group-item">
				            <h4> Name</h4>
				            <p>${u.getFirstName()} ${u.getLastName()}</p>
				          </li>
				        
				           <li class="list-group-item">
				            <h4>City</h4>
				            <%-- <c:forEach var="c" items="${city}"> --%>
		            			<p>${u.getCity() }</p>
				         <%--    </c:forEach> --%>
				          </li>
				           <li class="list-group-item">
				            <h4>Email</h4>
				            <p>${u.getUser().getEmail()}</p>
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
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
</html>