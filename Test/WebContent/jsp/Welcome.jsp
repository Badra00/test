<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<title>Welcome</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
	
</head>
 
<body>
<div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>



    <h2>Howdy, <s:property value="username" />...!</h2>
</body>

<script src="${pageContext.request.contextPath}/css/jquery.js"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>

</html>