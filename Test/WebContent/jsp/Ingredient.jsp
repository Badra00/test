<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function edit(id) {
		document.myForm.action="ingredient!editer?idIngredient="+id;
	    document.myForm.submit();
	}
</script>

<head>
	<title>Mes Ingrédients</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    
</head>
<body>
	<jsp:include page="menuH.jsp" />
	
	
	<div class="container">

		<s:form action="ingredient" namespace="/" name="myForm">
			<table class="table table-striped">
				<tr> <th>Nom</th> <th>Prix (au kg ou au litre)</th> <th>&nbsp;</th> </tr>
				<s:iterator value="%{#session.listeIngredient}" var="ingredient">
					<tr>
						<s:if test="#ingredient.edited==false">
								<td><s:property value="#ingredient.nom"/></td>
								<td><s:property value="#ingredient.prix"/></td>
						</s:if>
						<s:if test="#ingredient.edited==true">
								<td> <s:textfield name="nom" class="input-block-level" theme="simple" /> </td>
								<td> <s:textfield name="prix" class="input-block-level" theme="simple" /> </td>
						</s:if>
						<s:if test="modeEdite==false">
							<td><s:submit onClick="edit(%{#ingredient.id});" value="Editer" cssClass="btn btn-default" theme="simple" /></td>
						</s:if>
						<s:if test="modeEdite==true">
							<td>&nbsp;</td>
						</s:if>
					</tr>
				</s:iterator>
			</table>
			<s:if test="modeEdite==false">
				<s:submit method="ajouterIngredient" value="Ajouter" cssClass="btn btn-primary" theme="simple" />
			</s:if>
			<s:if test="modeEdite==true">
				<s:submit method="enregistrer" value="Enregistrer" cssClass="btn btn-success" theme="simple" />
				&nbsp;&nbsp;
				<s:submit method="annuler" value="Annuler" cssClass="btn btn-danger" theme="simple" />
			</s:if>
		</s:form>
		
		
		<hr>

	 	<jsp:include page="Footer.jsp" /> 
	 
	 </div>

</body>
</html>

