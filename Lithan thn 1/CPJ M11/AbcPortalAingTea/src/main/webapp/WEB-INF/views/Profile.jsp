<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <style>
      .bulet{
      width:80px;
      height:80px;
      border-radius:50%;
      background-color:#eaeaea;
      display:flex;
      justify-content:center;
      align-items:center;
      
      }
      .bulet h1{
      font-size:1.5em;
      }
      </style>
      
      
    </head>
    <body style="background-color: #CAF982 ; " >
     <%@ include file="Header.jsp" %>

	
      <div style="height: 100px; background-color: #D7D7D7;" class="">    
       <div class="d-flex align-items-center">
        <div class="bulet me-3">
           <h1>${F} ${L}</h1>
        </div>
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          Edit Profile
        </button>
       </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                
                <form:form modelAttribute="profile" action="Edit" method="post" class="p-4">
                <input type="hidden" name="userDetailsId" value="${id}">
                  <div class=" m-3">
                    <p>FirstName</p>
                    <input type="text" class="form-control" name="FirstName" value="${FirstName}">
                </div>
                <div class=" m-3">
                    <p>Lastname</p>
                    <input type="text" class="form-control" name="LastName" value="${LastName}">
                </div>
                <div class=" m-3">
                    <p>Date of birth</p>
                    <input type="date" class="form-control" name="Dateofbirth" value="${Dateofbirth}">
                </div>
                 <div class=" m-3">
                    <p>Education</p>
                    <input type="text" class="form-control w-50" name="Education" value="${Education}">
                </div>
                  <div class=" m-3 form-group">
                      <p>Jobs Experience</p>
                      <input type="text"  class="form-control" name="JobsExperience" value="${JobsExperience}">
                  </div>
                  <div class=" m-3">
                      <p>Skill</p>
                      <input type="text" class="form-control" name="Skill" value="${Skill}">
                  </div>

                  <div class="ps-3">
                      <input class="btn- btn-outline-secondary" type="submit">
                  </div>
              </form:form>
          </div>
            </div>
          </div>
        </div>
      <h5 class="ps-5">${FirstName} ${LastName}</h5>
      <h5 class="ps-5">${Dateofbirth}</h5>  
<!-- Button trigger modal -->

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"></script>
     
      
      <div >
        <div class="p-3">
                    
                    <div class="card " style="width: 900px; ">
                        <div class="card-body ">
                            <h1>Experience</h1>
                            <p>${JobsExperience}</p>
                        </div>
                    </div><br>

                    <div class="card " style="width: 900px; ">
                        <div class="card-body ">
                            <h1>Education</h1>
                            <p>${Education}</p><br>
                        </div>
                    </div><br>

                    <div class="card " style="width: 900px; ">
                        <div class="card-body ">
                            <h1>Skill</h1>
                            <p>${Skill}</p><br>
                        </div>
                    </div><br>
                   
                   
                               
                  
            </div>
                   	
                 </div>
          
           <%@ include file="Footer.jsp" %>    
        </div>
     
 
  </body>
</html>