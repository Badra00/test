<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function edit(id) {
		document.myForm.action="recette!editer?idRecette="+id;
	    document.myForm.submit();
	}
</script>

<head>
	<title>Mes Recettes</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    
</head>
<body>
	<jsp:include page="menuH.jsp" />
	
	
	<div class="container">

		<s:form action="listRecette" namespace="/" name="myForm">
			<table class="table table-striped">
				<tr> <th>Nom</th> <th>Prix Total</th> <th>Masse Total</th> <th>&nbsp;</th> </tr>
				<s:iterator value="%{#session.listeRecette}" var="recette">
					<tr>
						<td> <s:property value="#recette.nom"/> </td>
						<td> <s:property value="#recette.prixTotal"/> </td>
						<td> <s:property value="#recette.masseTotal"/> </td>
						<td><s:submit onClick="edit(%{#recette.id});" value="Editer" cssClass="btn btn-default" theme="simple" /></td>
					</tr>
				</s:iterator>
			</table>
			<s:submit method="ajouter" value="Ajouter" cssClass="btn btn-primary" theme="simple" />
		</s:form>
		
		
		<hr>

	 	<jsp:include page="Footer.jsp" /> 
	 
	 </div>

</body>
</html>

