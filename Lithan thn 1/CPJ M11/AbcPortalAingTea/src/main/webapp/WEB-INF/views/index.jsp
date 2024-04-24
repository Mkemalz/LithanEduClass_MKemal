<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
  </head>
  <body style="overflow-x: hidden;">
 
   <%@ include file="Header1.jsp" %>

    <div style="background-color: #CAF982; height: 70vh;">
      <div class="p-4 ">
        <div class="row">
          <div class="d-flex justify-content-between">
            <div class="col-lg-5 ">
              <h1 class="fs-3 pri"> Welcome to <span class="">Portal
                  Community</span> </h1>
               
              <p class=" "> Lorem ipsum dolor, sit amet consectetur
                adipisicing elit. Pariatur, dolore? Dignissimos
                quibusdam
                praesentium soluta adipisci.
                Lorem ipsum dolor sit amet consectetur, adipisicing
                elit. Esse tempora repellendus maxime ipsam itaque
                dolorum delectus repellat dolor, quam dolorem
                quaerat obcaecati consequuntur voluptatem quas
                aliquid, soluta magni dicta! Molestias enim qui,
                laboriosam quod alias repellat veniam sint
                asperiores fugiat recusandae assumenda provident,
                magnam totam sit minus distinctio labore dolorem.</p>
              <button type="button" class="btn btn-primary shadow
                w-50" style="height: 60px;">Join now</button>
            </div>
            <div class="col-lg-6 text-end  img-landing ">
              <img src="img/hi.jpg" alt="" width="500px"
                class="img-fluid mx-auto">
            </div>
          </div>
        </div>
      </div>
    </div><br> <br>


    <div class="row d-flex justify-content-around">
      <div class="card m-3 col-2" style="width: 18rem;">
        <img src="img/hi.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card
            title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>

      <div class="card m-3 col-2" style="width: 18rem ;">
        <img src="img/hi.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card
            title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>

      <div class="card m-3 col-2" style="width: 18rem ;">
        <img src="img/hi.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card
            title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>

      <div class="card m-3 col-2" style="width: 18rem ;">
        <img src="img/hi.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card
            title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>

<%@ include file="Footer.jsp" %>
 
  </body>
</html>