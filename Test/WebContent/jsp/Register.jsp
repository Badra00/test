<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Inscription</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
</head>
<body>
	<jsp:include page="menuH.jsp" />
	
	
	<div class="container">

		<s:form action="register" method="post" cssClass="form-signin" namespace="/">
			<h2 class="form-signin-heading">Register</h2>
			<input type="text" name="username" class="input-block-level" placeholder="Username">
		    <input type="text" name="email" class="input-block-level" placeholder="Email address">
	        <input type="password" name="password" class="input-block-level" placeholder="Password">
	        
		    <s:submit method="register" value="Register" cssClass="btn btn-large btn-primary" />
		</s:form>
		
		
		<hr>

	 	<jsp:include page="Footer.jsp" /> 
	 
	 </div>


</body>
</html>