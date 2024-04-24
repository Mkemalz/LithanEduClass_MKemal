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
	<section class="profile pt-5 pb-5" style="background-color: #787A7B">
        <div class="container">
            <div class="row">
                <div class="alert alert-success alert-dismissible fade show my-3 ${ message == null ? " d-none"
                    : "d-block" }" role="alert">
                    ${ message }
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>

                <div class="profile col-lg-12">
                    <div class="card">
                        <div class="img-fluid rounded-3 text-light d-flex flex-row"
                            style="height: 200px; background-image: url(img/bgprofile.png); background-repeat: no-repeat; background-size: cover; box-shadow: 1px 1px 2px black, 0 0 25px green, 0 0 5px darkgreen;">
                            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                <img src="img/profile-removebg-preview.png" alt="Generic placeholder image"
                                    class="myImg img-fluid img-thumbnail rounded-circle"
                                    style="width: 150px; z-index: 1; margin-top: 100px; box-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkgreen;">
                            </div>
                        </div>
                        <div class="p-4 text-black bg-light rounded-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="myName " style="margin-left: 165px;">
                                    <h2 class="fw-bold">${fullName}</h2>
                                    <span>${job}</span>
                                </div>
                                <div>
                                    <button  class="border border-success btn btn-primary h5 rounded-pill px-5 py-2 bi bi-pencil" data-bs-toggle="modal"
                                        data-bs-target="#editProfileModal" ><i class="fa fa-pencil text-white" style="width :30px;"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12  d-flex mt-5  rounded-3">
                        <div class="col-lg-5">
                            <div class="container">
                                <div class="row bg ">
                                    <h1 class="text-white">Status</h1>
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-12">      
                                                    	<div class="d-flex justify-content-between align-items-start">
                                                    		 <h5 class="text-white bg-secondary p-2" style="width:max-content;"> Education</h5> 
                                                    		 <button class="btn btn-primary border border-4 rounded-5"  
                                                    		 	data-bs-toggle="modal"
                                        						data-bs-target="#addEducation"><i class="fa fa-plus text-white"></i></button>
                                                    	</div>                                               
                                                       
                                                    </div>
                                                    <div class="col-sm-12">

                                                        <ul>
                                                         <c:forEach var="ed" items="${education}">
                                                         
                                                         	<li class="mb-2">
                                                        		<h6>${ed.getUniversity()}</h6>
                                                        		<p class="p-0 m-0">${ed.getMajored()}</p>
                                                        		<p class="p-0 m-0">${ed.getEd_start_date()} - ${ed.getEd_end_date()}</p>
                                                        	</li>
                                                         
                                                         </c:forEach>
                                                        	
                                                        </ul>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-12">
	                                                    <div class="d-flex justify-content-between align-items-start">
	                                                    	<h5 class="text-white bg-secondary p-2" style="width:max-content;">Experience</h5> 
	                                                    	  <button class="btn btn-primary border border-4 rounded-5"  
                                                    		 	data-bs-toggle="modal"
                                        						data-bs-target="#addExperience"><i class="fa fa-plus text-white"></i></button>
	                                                    </div>
                                                        
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <p class="text-muted mb-0">${job}</p>
                                                        <ul>
                                                         <c:forEach var="ex" items="${experiences}">
                                                         	
                                                         	<li class="mb-2">
                                                        		<h6>${ex.getTitle()}</h6>
                                                        		<p class="p-0 m-0">${ex.getCompanyName()}</p>
                                                        		<p class="p-0 m-0">${ex.getEx_start_date()} - ${ex.getEx_end_date()}</p>
                                                        	</li>
                                                         	
                                                         </c:forEach>                                                      
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="container">
                                <div class="row">
                                    <h1 class="text-white">Personal Data</h1>
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <p class="mb-0">First Name : </p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${firstName}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <p class="mb-0">Last Name : </p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${lastName}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <p class="mb-0">Email : </p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${email}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <p class="mb-0">Date of Birth :</p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${dateOfBirth}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <p class="mb-0">Address : </p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${city}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel"
        aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style=" box-shadow: 1px 1px 5px black, 0 0 35px blue, 0 0 5px darkblue;">
                <div class="modal-header">
                    <h5 class=" modal-title" id="editProfileModalLabel">Edit
                        Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="profile" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="name" class="form-label">First Name</label> <input type="text"
                                class="form-control" id="firstName" name="firstName" value="${firstName}" required>
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Last Name</label> <input type="text"
                                class="form-control" id="lastName" name="lastName" value="${lastName}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="date" class="form-label">Brithday</label> <input type="date"
                                class="form-control" id="date" name="date" value="${date}" required>
                        </div>
                        <div class="mb-3">
                            <label for="location" class="form-label">Location</label> <input type="text"
                                class="form-control" id="location" name="city" value="${city}" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save
                            changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <!-- Modal2 -->
   <div class="modal fade" id="addEducation" tabindex="-1" aria-labelledby="addEducationlabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editProfileModalLabel">Add Education</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="add_education" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="university" class="form-label">University</label> 
                            <input type="text" class="form-control" id="university" name="university" required>
                        </div>
                        <div class="mb-3">
                            <label for="majored" class="form-label">Majored In</label> 
                            <input type="text" class="form-control" id="majored" name="majored" required>
                        </div>
                        <div class="mb-3">
                            <label for="ed_start_date" class="form-label">Start Date</label> 
                            <input type="date"  class="form-control" id="ed_start_date" name="ed_start_date" required>
                        </div>
                        <div class="mb-3">
                            <label for="ed_end_date" class="form-label">End Date</label> 
                            <input type="date"  class="form-control" id="ed_end_date" name="ed_end_date" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save
                            changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    
    <!-- Modal3 -->
   <div class="modal fade" id="addExperience" tabindex="-1" aria-labelledby="addExperiencelabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editProfileModalLabel">Add Experience</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="add_experience" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label> 
                            <input type="text" class="form-control" id="title" name="title" required>
                        </div>
                        <div class="mb-3">
                            <label for="company" class="form-label">Company name</label> 
                            <input type="text" class="form-control" id="company" name="company" required>
                        </div>
                        <div class="mb-3">
                            <label for="ex_start_date" class="form-label">Start Date</label> 
                            <input type="date"  class="form-control" id="ex_start_date" name="ex_start_date" required>
                        </div>
                        <div class="mb-3">
                            <label for="ex_end_date" class="form-label">End Date</label> 
                            <input type="date"  class="form-control" id="ex_end_date" name="ex_end_date" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save
                            changes</button>
                    </div>
                </form>
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