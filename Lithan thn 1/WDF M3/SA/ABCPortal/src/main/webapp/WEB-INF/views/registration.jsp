<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<!-- style -->
	<link rel="stylesheet" href="css/register.css">
	
</head>
<body>

<div class="card-content2">
		<div class="crd-row2">
			<div class="card-column2">
				<div class="card2">
					<main>
                        <h2 style="color:white;">Sign Up</h2>
                       	<h5>Lorem Ipsum has been the industry's </h5>
                    <form action="registration" method="post" onsubmit="return validRes()" class=" needs-validation"
                    novalidate>
                    <div class="form-group mt-1">
                    	Email address
                        <input type="email" class="form-control" placeholder="Email Address" name="email"
                            required>
                       <!--  <div class="invalid-feedback">
                            Email address should be have @ and .
                        </div> -->
                    </div>
                    <div class="form-group mt-1">
                    	First Name
                        <input type="text" class="form-control" placeholder="First Name" name="firstName" maxlength="50"
                            required>
                        <!-- <div class="invalid-feedback">
                            Please Enter Your First Name.
                        </div> -->
                    </div>
                    <div class="form-group mt-1">
                    	Last Name
                        <input type="text" class="form-control" placeholder="Last Name" name="lastName" maxlength="50"
                            required>
                        <!-- <div class="invalid-feedback">
                            Please Enter Your Last Name.
                        </div> -->
                    </div>
                    <div class="form-group mt-1">
                    	City
                        <input type="text" class="form-control" placeholder="City" name="city" maxlength="50"
                            required>
                        <!-- <div class="invalid-feedback">
                            Please Enter Your City.
                        </div> -->
                    </div>
                    <div class="form-group mt-1">
                    	Password
                        <input type="password" class="form-control" id="password" placeholder="Password" name="password"
                            maxlength="15" required>
                        <!-- <div class="invalid-feedback">
                            Password required & must be match
                        </div> -->
                    </div>
                    <div class="form-group mt-1">
                    	Confirm Password
                        <input type="password" class="form-control" id="confPass" placeholder="Confirm Password"
                            name="confPass" maxlength="15" required>
                        <!-- <div class="invalid-feedback">
                            Password required & must be match
                        </div> -->
                    </div>
                    <p style="color:white;">By clicking Agree &amp; Join, you agree to the ABC Jobs User
                        Agreement, Privacy Policy, and Cookie Policy.</p>
                    <button type="submit" class="btn btn-primary btn-block rounded-5">Agree
                        and Join</button>
                    <p>
                       
                    </p>
                </form>
                 Already on ABC Jobs? <a href="login"><button class="btn btn-primary">Sign In</button></a>
                       
                    </main>
					
				</div>
			</div>
		</div>

	</div>

</body>
</html>