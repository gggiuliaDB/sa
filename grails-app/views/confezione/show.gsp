
<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-confezione" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-confezione" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list confezione">
			
				<g:if test="${confezioneInstance?.descrizione}">
				<li class="fieldcontain">
					<span id="descrizione-label" class="property-label"><g:message code="confezione.descrizione.label" default="Descrizione" /></span>
					
						<span class="property-value" aria-labelledby="descrizione-label"><g:fieldValue bean="${confezioneInstance}" field="descrizione"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${confezioneInstance?.sconto}">
				<li class="fieldcontain">
					<span id="sconto-label" class="property-label"><g:message code="confezione.sconto.label" default="Sconto" /></span>
					
						<span class="property-value" aria-labelledby="sconto-label"><g:fieldValue bean="${confezioneInstance}" field="sconto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${confezioneInstance?.note}">
				<li class="fieldcontain">
					<span id="note-label" class="property-label"><g:message code="confezione.note.label" default="Note" /></span>
					
						<span class="property-value" aria-labelledby="note-label"><g:fieldValue bean="${confezioneInstance}" field="note"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${confezioneInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="confezione.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${confezioneInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${confezioneInstance?.prezzo}">
				<li class="fieldcontain">
					<span id="prezzo-label" class="property-label"><g:message code="confezione.prezzo.label" default="Prezzo" /></span>
					
						<span class="property-value" aria-labelledby="prezzo-label"><g:fieldValue bean="${confezioneInstance}" field="prezzo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${confezioneInstance?.prodotto}">
				<li class="fieldcontain">
					<span id="prodotto-label" class="property-label"><g:message code="confezione.prodotto.label" default="prodotto" /></span>
					
						<span class="property-value" aria-labelledby="prodotto-label"><g:link controller="prodotto" action="show" id="${confezioneInstance?.prodotto?.id}">${confezioneInstance?.prodotto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:confezioneInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${confezioneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
