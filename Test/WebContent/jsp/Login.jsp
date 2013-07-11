<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<title>Login</title>
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
        background-color: #f5f5f5;
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
	    margin-top: 1em;
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
	<div class="container">

		<s:actionerror />
		<s:form action="login.action" method="post" cssClass="form-signin">
			<h2 class="form-signin-heading">Please sign in</h2>
		    <input type="text" name="username" class="input-block-level" placeholder="Email address">
	        <input type="password" name="password" class="input-block-level" placeholder="Password">
	        <label class="checkbox">
	          <input type="checkbox" value="remember-me"> Remember me
	        </label>
		    <s:submit method="execute" value="Sign in" cssClass="btn btn-large btn-primary" />
		</s:form>

	</div>
	
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