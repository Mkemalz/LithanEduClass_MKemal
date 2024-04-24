<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Public Profile</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background-color: #CAF982 ; ">
         <%@ include file="Header.jsp" %>

        <div>
            <div style="height: 100px; background-color: #D7D7D7;" class="p-0 m-0">
                <div  class="p-4">
                    <img src="img/per.png" alt="" class="rounded-circle ms-5 " width="200px"
                        height="200px">
				<div class="col-2 align-self-center">
					<button class="btn btn-success" id="follow">Follow</button>
				</div>
				<h5 class="ps-5 m-4">${FirstName} ${LastName}</h5>
                    <h5 class="ps-5 m-4">${Dateofbirth }</h5>
                    
                    <div class="card " style="width: 900px; ">
                        <div class="card-body ">
                            <h1>Jobs</h1>
                            <p>${Experience}</p>
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
                <div class="">
  <%@ include file="Footer.jsp" %>
  </div>   
            </div>
    
            <div class="card pull-right m-5 " style="width: 350px; height: 400px;">
                <div class="card-body ">
                    <div class="d-flex justify-content-around  ">
                        <img src="yu.jpg" alt="..." class="rounded-circle me-3 mb-3" width="60px" height="50px"
                          style="background-color: slategrey">
                        <div class="fs-5 me-5">
                          <h5>Jojo Junior</h5>
                          <p style="font-size: 12px;"> Software Engineering</p>
                        </div>
                        <button type="button" class="btn btn-outline-primary">Follow</button>
                      </div>
                </div>
    
                <div class="card-body ">
                    <div class="d-flex justify-content-around  ">
                        <img src="yu.jpg" alt="..." class="rounded-circle me-3 mb-3" width="60px" height="50px"
                          style="background-color: slategrey">
                        <div class="fs-5 me-5">
                          <h5>Kaka Roi</h5>
                          <p style="font-size: 12px;"> Software Engineering</p>
                        </div>
                        <button type="button" class="btn btn-outline-primary">Follow</button>
                      </div>
                </div>
    
                <div class="card-body ">
                    <div class="d-flex justify-content-around  ">
                        <img src="yu.jpg" alt="..." class="rounded-circle me-3 mb-3" width="60px" height="50px"
                          style="background-color: slategrey">
                        <div class="fs-5 me-5">
                          <h5>Jopy Liano</h5>
                          <p style="font-size: 12px;"> Software Engineering</p>
                        </div>
                        <button type="button" class="btn btn-outline-primary">Follow</button>
                      </div>
                </div>
                
            </div>
        
        </div>
       
       
      
     
    </body>
    <script>
	const followBtn = document.querySelector("#follow");
	followBtn.addEventListener("click", () => {
		if(followBtn.innerHTML == "Follow") {
			followBtn.classList.remove("btn-success");
			followBtn.classList.add("btn-outline-success");
			followBtn.innerHTML = "Unfollow";
		} else {
			followBtn.classList.add("btn-success");
			followBtn.classList.remove("btn-outline-success");
			followBtn.innerHTML = "Follow";
		}
	});
</script>
</html>