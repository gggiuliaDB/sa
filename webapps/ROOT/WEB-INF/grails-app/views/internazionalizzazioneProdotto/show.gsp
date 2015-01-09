
<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-internazionalizzazioneProdotto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list internazionalizzazioneProdotto">
			
				<g:if test="${internazionalizzazioneProdottoInstance?.descrizione}">
				<li class="fieldcontain">
					<span id="descrizione-label" class="property-label"><g:message code="internazionalizzazioneProdotto.descrizione.label" default="Descrizione" /></span>
					
						<span class="property-value" aria-labelledby="descrizione-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="descrizione"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.comeGustarlo}">
				<li class="fieldcontain">
					<span id="comeGustarlo-label" class="property-label"><g:message code="internazionalizzazioneProdotto.comeGustarlo.label" default="Come Gustarlo" /></span>
					
						<span class="property-value" aria-labelledby="comeGustarlo-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="comeGustarlo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.ingredienti}">
				<li class="fieldcontain">
					<span id="ingredienti-label" class="property-label"><g:message code="internazionalizzazioneProdotto.ingredienti.label" default="Ingredienti" /></span>
					
						<span class="property-value" aria-labelledby="ingredienti-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="ingredienti"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.conservazione}">
				<li class="fieldcontain">
					<span id="conservazione-label" class="property-label"><g:message code="internazionalizzazioneProdotto.conservazione.label" default="Conservazione" /></span>
					
						<span class="property-value" aria-labelledby="conservazione-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="conservazione"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.note}">
				<li class="fieldcontain">
					<span id="note-label" class="property-label"><g:message code="internazionalizzazioneProdotto.note.label" default="Note" /></span>
					
						<span class="property-value" aria-labelledby="note-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="note"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.locale}">
				<li class="fieldcontain">
					<span id="locale-label" class="property-label"><g:message code="internazionalizzazioneProdotto.locale.label" default="Locale" /></span>
					
						<span class="property-value" aria-labelledby="locale-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="locale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${internazionalizzazioneProdottoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internazionalizzazioneProdottoInstance?.prodotto}">
				<li class="fieldcontain">
					<span id="prodotto-label" class="property-label"><g:message code="internazionalizzazioneProdotto.prodotto.label" default="Prodotto" /></span>
					
						<span class="property-value" aria-labelledby="prodotto-label"><g:link controller="prodotto" action="show" id="${internazionalizzazioneProdottoInstance?.prodotto?.id}">${internazionalizzazioneProdottoInstance?.prodotto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:internazionalizzazioneProdottoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${internazionalizzazioneProdottoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
