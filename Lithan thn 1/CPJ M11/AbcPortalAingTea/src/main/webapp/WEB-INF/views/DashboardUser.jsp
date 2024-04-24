<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <title>Document</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body style="overflow-x: hidden;" >
     <%@ include file="Header.jsp" %><br>

      <div class="container">
        <div class="row">
          <div class="col-3">
            <div class="d-flex flex-column border rounded-3 pb-4">
              <a href="profile" class="text-decoration-none">
                <div class="border p-0 rounded-3 border-5">
                  <div class="fs-1 d-flex align-items-center justify-content-center bg-primary text-white" style="height: 25vh;">
                   <span>${F}</span>
                   <span>${L}</span>
                 </div>
               </div>
             </a>
             <div class="px-4 py-3">
               <h2>${FirstName}</h2>
               <p>${title}</p>
             </div>
              <% if((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) { %>
        <li class="nav-item">
          <a class="nav-link btn btn-primary fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/Admin.jsp") ? "text-primary border-bottom border-3 border-primary" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark border-bottom border-3  border-white" %>" href="<%= request.getContextPath() %>/admin">Admin</a>
        </li>
      <% } %>
             <button class="btn btn-outline-success mx-4">Create a post</button>
           </div>
         </div>
     
         <!-- post -->
         <div class="col-6">
           <div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm">
             <div class="form-check">
             <input class="form-check-input" type="checkbox" value="" id="posts" checked>
             <label class="form-check-label" for="posts">
               My post
             </label>
           </div>
               <div class="form-check">
             <input class="form-check-input" type="checkbox" value="" id="posts" checked>
             <label class="form-check-label" for="posts">
               Show all
             </label>
           </div>
               <div class="form-check">
             <input class="form-check-input" type="checkbox" value="" id="jobs">
             <label class="form-check-label" for="jobs">
               Show Jobs
             </label>
           </div>
           <div class="form-check">
             <input class="form-check-input" type="checkbox" value="" id="jobs">
             <label class="form-check-label" for="jobs">
               Saved post
             </label>
           </div>
             </div>
           <div class="border rounded-3 mb-3 px-3" id="post1">
             <div class="d-flex align-items-center gap-2 py-3">
               <span class="px-3 py-2 rounded-circle border">J</span>
               <a href="" class="text-decoration-none fs-5">Joe</a>
               <small class="ms-auto">15 hours ago</small>
             </div>
     
             <!-- content -->
             <div class="">
               <p class="fw-bold fs-4">What is the best games?</p>
             </div>
     
             <div class="d-flex align-items-center gap-2 py-3">
               <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
                 <i class='bx bx-message-square-dots'></i> Comments
               </a>
               <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
                 <i class='bx bx-share-alt'></i> Share
                </a>
               <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary ms-auto">
                 <i class='bx bx-save'></i> Like
               </a>
             </div>
           </div>
     
         </div>
     
         <!-- notification & create post -->
         <div class="col-3">
           <div class="py-3 px-4 rounded-3 border">
     
             <div class="border-bottom mb-3">
               <h4 class="fs-4">${nf1.getEmailSubject()}</h4>
               <p>Check your email</p>
             </div>
     
             <div class="border-bottom mb-3">
               <h4 class="fs-4">${nf2.getEmailSubject()}</h4>
               <p>Check your email</p>
             </div>
             
             <div class="border-bottom mb-3">
               <h4 class="fs-4">${nf3.getEmailSubject()}</h4>
               <p>Check your email</p>
             </div>
     
             <div class="text-center">
               <a href="" class="btn btn-primary">See all notifications</a>
             </div>
           </div>
         </div>
       </div>
     </div>
      
      
</body>
</html>