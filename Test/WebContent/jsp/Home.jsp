<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<title>Home</title>  
    <style type="text/css">
      body {
        padding-bottom: 40px;
      }
      
      
    </style>
</head>
 
<body>
	<jsp:include page="menuH.jsp" />

	<div class="container">
		<s:property value="login"/>

     <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
        <h1>Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a href="#" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
        <div class="span4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
       </div>
        <div class="span4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
      </div>
    
    	<hr>
    
	 	<jsp:include page="Footer.jsp" />   
    
    </div>
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="${pageContext.request.contextPath}/jslib/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-transition.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-alert.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-modal.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-scrollspy.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-tab.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-tooltip.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-popover.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-button.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-collapse.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-carousel.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap-typeahead.js"></script>
    
    
</body>


</html>