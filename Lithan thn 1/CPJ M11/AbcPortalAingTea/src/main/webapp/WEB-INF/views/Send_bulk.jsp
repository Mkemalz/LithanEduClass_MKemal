<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<body>
 <%@ include file="Header.jsp" %>
 
 <div class="container">
        <form:form action="Send_bulk" method="post" modelAttribute="sendBulk">
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="subject" name="emailSubject">
            <label for="subject">Subject</label>
          </div>
          <div class="form-floating mb-3">
            <textarea class="form-control" id="body" name="emailBody"></textarea>
            <label for="body">Body</label>
          </div>
          <button type="submit" class="btn btn-primary">Send Message to All</button>
        </form:form>
      </div>
 
</body>
</html>