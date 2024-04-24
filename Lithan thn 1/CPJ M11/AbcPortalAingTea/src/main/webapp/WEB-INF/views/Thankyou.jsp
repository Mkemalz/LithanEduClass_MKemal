<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thankyou</title>
        <link rel="stylesheet" href="css/thankyou.css">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
            
    </head>
    <body style="background-color: #CAF982;">
        <header id="nav">

            <nav>
                <div class="bebas">
                    <h1>ABC JOBS</h1>
                    <h1>Community Portal </h1> <br><br>
                     <div >
        <a class="text-decoration-none text-dark" href="home">HOME  </a>
         <a class="text-decoration-none text-dark" href="Login">LOGIN</a>
        </div>
                    
                    <!-- <ul>
                        <div class="home d-flex justify-content-between ">
                            <li><a href="home">HOME</a></li><br>
                            <li><a href="Login">LOGIN</a></li>
                        </div>
                    </ul> -->
                </div>
            </nav>
        </header>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

        <div class="ty text-center">
            <p class="fs-3">Thankyou For Regist ${Email}  ${FirstName} <br> A litte more and you're good to go </p>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary px-2 py-2"
            data-bs-toggle="modal" data-bs-target="#exampleModal">
           The link has been sent it to your email
        </button>
        </div>
        

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal
                            title</h5>
                        <button type="button" class="btn-close"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        The link has been sent it to your email
                    </div>
                    <div class="modal-footer">
                       <a href="Verified" class="btn btn-secondary">Continue</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>