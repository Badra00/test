<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<title>Login</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
	
</head>
 
<body>
<div class="navbar navbar-inverse">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="#">Project name</a>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
		</div>
	</div>
</div>



<h2>Struts 2 - Login Application</h2>
<s:actionerror />
<s:form action="login.action" method="post">
    <s:textfield name="username" key="label.username" size="20" />
    <s:password name="password" key="label.password" size="20" />
    <s:submit method="execute" key="label.login" align="center" />
</s:form>
</body>

<script src="${pageContext.request.contextPath}/jslib/jquery.js"></script>
<script src="${pageContext.request.contextPath}/jslib/bootstrap.min.js"></script>

</html>