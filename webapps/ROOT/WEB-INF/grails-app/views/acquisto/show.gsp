
<%@ page import="it.ggg.sa.acquisto.Acquisto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'acquisto.label', default: 'Acquisto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-acquisto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-acquisto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list acquisto">
			
				<g:if test="${acquistoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="acquisto.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${acquistoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${acquistoInstance?.prodotto}">
				<li class="fieldcontain">
					<span id="prodotto-label" class="property-label"><g:message code="acquisto.prodotto.label" default="Prodotto" /></span>
					
						<span class="property-value" aria-labelledby="prodotto-label"><g:link controller="prodotto" action="show" id="${acquistoInstance?.prodotto?.id}">${acquistoInstance?.prodotto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${acquistoInstance?.quantita}">
				<li class="fieldcontain">
					<span id="quantita-label" class="property-label"><g:message code="acquisto.quantita.label" default="Quantita" /></span>
					
						<span class="property-value" aria-labelledby="quantita-label"><g:fieldValue bean="${acquistoInstance}" field="quantita"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acquistoInstance?.statoPagamento}">
				<li class="fieldcontain">
					<span id="statoPagamento-label" class="property-label"><g:message code="acquisto.statoPagamento.label" default="Stato Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="statoPagamento-label"><g:fieldValue bean="${acquistoInstance}" field="statoPagamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${acquistoInstance?.utente}">
				<li class="fieldcontain">
					<span id="utente-label" class="property-label"><g:message code="acquisto.utente.label" default="Utente" /></span>
					
						<span class="property-value" aria-labelledby="utente-label"><g:link controller="user" action="show" id="${acquistoInstance?.utente?.id}">${acquistoInstance?.utente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:acquistoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${acquistoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
