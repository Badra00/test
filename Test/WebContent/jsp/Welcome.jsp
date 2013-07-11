<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<title>Welcome</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
    <style type="text/css">
    /* Sticky footer styles
      -------------------------------------------------- */

      html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        /* Negative indent footer by it's height */
        margin: 0 auto -60px;
      }

      /* Set the fixed height of the footer here */
      #push,
      #footer {
        height: 60px;
      }
      #footer {
        background-color: #000101;
        color: #FFFFFF;
      }

      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }
      
    [role="contentinfo"] {
	    margin-top: 3em;
	    padding-bottom: 1em;
	}
	[role="contentinfo"] .container {
	    border-top: 0.5em solid #000101;
	}
	[role="contentinfo"] p {
	    margin-bottom: 0;
	}

    </style>
</head>
 
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">menuH.project</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">menuH.button.home</a></li>
              <li><a href="#about">menuH.button.about</a></li>
              <li><a href="#contact">menuH.button.contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>


    <h2>Howdy, <s:property value="username" />...!</h2>
    
    
	<div id="footer" role="contentinfo">
		<div class="container">
			<p class="copyright">&copy; Badradine Boulahia 2013. All rights reserved.</p>
		</div>
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