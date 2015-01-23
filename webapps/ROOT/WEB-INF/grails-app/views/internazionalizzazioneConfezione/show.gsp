
<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneConfezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internazionalizzazioneConfezione.label', default: 'InternazionalizzazioneConfezione')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <%--<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="show-internazionalizzazioneConfezione" class="content scaffold-show" role="main">
			<h2><g:message code="default.show.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list internazionalizzazioneConfezione">
			
				<g:if test="${internazionalizzazioneConfezioneInstance?.descrizione}">
				<li class="fieldcontain">
					<span id="descrizione-label" class="property-label"><g:message code="internazionalizzazioneConfezione.descrizione.label" default="Descrizione" /></span>
					
						<span class="property-value" aria-labelledby="descrizione-label"><g:fieldValue bean="${internazionalizzazioneConfezioneInstance}" field="descrizione"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneConfezioneInstance?.confezione}">
				<li class="fieldcontain">
					<span id="confezione-label" class="property-label"><g:message code="internazionalizzazioneConfezione.confezione.label" default="Confezione" /></span>
					
						<span class="property-value" aria-labelledby="confezione-label"><g:link controller="confezione" action="show" id="${internazionalizzazioneConfezioneInstance?.confezione?.id}">${internazionalizzazioneConfezioneInstance?.confezione?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneConfezioneInstance?.locale}">
				<li class="fieldcontain">
					<span id="locale-label" class="property-label"><g:message code="internazionalizzazioneConfezione.locale.label" default="Locale" /></span>
					
						<span class="property-value" aria-labelledby="locale-label"><g:fieldValue bean="${internazionalizzazioneConfezioneInstance}" field="locale"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:internazionalizzazioneConfezioneInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${internazionalizzazioneConfezioneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
