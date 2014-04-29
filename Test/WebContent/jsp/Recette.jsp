<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function editIngredient(id) {
		document.myForm.action="modifyRecette!editIngredient?idIngredient="+id;
	    document.myForm.submit();
	}
</script>

<head>
	<title>Nouvelle Recette</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    
</head>
<body>
	<jsp:include page="menuH.jsp" />
	
	
	<div class="container">
		<s:textfield name="nom" class="input-block-level" label="Nom"/>
	
		<s:form action="modifyRecette" namespace="/" name="myForm">
			<table class="table table-striped" title="Liste des Ingrédients">
				<tr> <th>Nom</th> <th>Quantité</th> <th>&nbsp;</th> </tr>
				<s:iterator value="%{#session.mapIngredients}" status="stat">
					<tr>
						<s:if test="key.edited==false">
								<td><s:property value="key.nom"/></td>
								<td><s:property value="value"/></td>
						</s:if>
						<s:if test="key.edited==true">
								<td> <s:select list="%{#session.listeIngredient}" listKey="id" listValue="nom" theme="simple"/> </td>
								<td> <s:textfield name="quantite" class="input-block-level" theme="simple" /> </td>
						</s:if>
						<s:if test="modeEdite==false">
							<td><s:submit onClick="editIngredient(%{#key.id});" value="Editer" cssClass="btn btn-default" theme="simple" /></td>
						</s:if>
						<s:if test="modeEdite==true">
							<td>&nbsp;</td>
						</s:if>
					</tr>
				</s:iterator>
			</table>
			
			<s:textfield name="masseTotal" class="input-block-level" key="Masse Total" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Prix Total : <s:property value="prixTotal" />
			
			<br /><br />
			
			<s:if test="modeEdite==false">
				<s:submit method="ajouterIngredient" value="Ajouter un ingredient" cssClass="btn btn-primary" theme="simple" />
			</s:if>
		</s:form>
		
		<br/>
		
		<s:form action="enregistrerRecette">
			<s:submit method="enregistrer" value="Enregistrer" cssClass="btn btn-success" theme="simple" />
			&nbsp;&nbsp;
			<s:submit method="annuler" value="Annuler" cssClass="btn btn-danger" theme="simple" />
		</s:form>
		
		<hr>

	 	<jsp:include page="Footer.jsp" /> 
	 
	 </div>

</body>
</html>

