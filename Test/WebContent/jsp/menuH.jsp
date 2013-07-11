<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
	<s:set var="login">${sessionScope.login}</s:set>
	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <s:if test="%{#login=='true'}">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            </s:if>
          </button>
          <a class="brand" href="#">Test</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="<s:url action="login"/>">Home</a></li>
              <li><a href="<s:url action="register"/>">Register</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <s:if test="%{#login=='true'}">
              	<li><a href="#contact">Profil</a></li>
              	<li><a href="<s:url action="logout"/>">Logout</a></li>
              </s:if>
            </ul>
            
            <s:if test="%{#login=='false'}">
	            <s:form action="login" method="post" cssClass="navbar-form pull-right" namespace="/">
	              <input class="span2" name="email" type="text" placeholder="Email">
	              <input class="span2" name="password" type="password" placeholder="Password">
	              <s:submit method="execute" value="Sign in" cssClass="btn" />
	            </s:form>
            </s:if>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
</body>
