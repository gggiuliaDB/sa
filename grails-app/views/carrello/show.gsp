
<%@ page import="it.ggg.sa.carrello.Carrello" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carrello.label', default: 'Carrello')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carrello" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carrello" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carrello">
			
				<g:if test="${carrelloInstance?.confezione}">
				<li class="fieldcontain">
					<span id="confezione-label" class="property-label"><g:message code="carrello.confezione.label" default="Confezione" /></span>
					
						<span class="property-value" aria-labelledby="confezione-label"><g:link controller="confezione" action="show" id="${carrelloInstance?.confezione?.id}">${carrelloInstance?.confezione?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${carrelloInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="carrello.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${carrelloInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${carrelloInstance?.quantita}">
				<li class="fieldcontain">
					<span id="quantita-label" class="property-label"><g:message code="carrello.quantita.label" default="Quantita" /></span>
					
						<span class="property-value" aria-labelledby="quantita-label"><g:fieldValue bean="${carrelloInstance}" field="quantita"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carrelloInstance?.utente}">
				<li class="fieldcontain">
					<span id="utente-label" class="property-label"><g:message code="carrello.utente.label" default="Utente" /></span>
					
						<span class="property-value" aria-labelledby="utente-label"><g:link controller="user" action="show" id="${carrelloInstance?.utente?.id}">${carrelloInstance?.utente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:carrelloInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${carrelloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
