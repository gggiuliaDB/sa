
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prodotto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prodotto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prodotto">
			
				<g:if test="${prodottoInstance?.durata}">
				<li class="fieldcontain">
					<span id="durata-label" class="property-label"><g:message code="prodotto.durata.label" default="Durata" /></span>
					
						<span class="property-value" aria-labelledby="durata-label"><g:fieldValue bean="${prodottoInstance}" field="durata"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.immagine}">
				<li class="fieldcontain">
					<span id="immagine-label" class="property-label"><g:message code="prodotto.immagine.label" default="Immagine" /></span>
					
						<span class="property-value" aria-labelledby="immagine-label"><g:fieldValue bean="${prodottoInstance}" field="immagine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.commenti}">
				<li class="fieldcontain">
					<span id="commenti-label" class="property-label"><g:message code="prodotto.commenti.label" default="Commenti" /></span>
					
						<g:each in="${prodottoInstance.commenti}" var="c">
						<span class="property-value" aria-labelledby="commenti-label"><g:link controller="commento" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.confezioni}">
				<li class="fieldcontain">
					<span id="confezioni-label" class="property-label"><g:message code="prodotto.confezioni.label" default="Confezioni" /></span>
					
						<g:each in="${prodottoInstance.confezioni}" var="c">
						<span class="property-value" aria-labelledby="confezioni-label"><g:link controller="confezione" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.internazionalizzazioni}">
				<li class="fieldcontain">
					<span id="internazionalizzazioni-label" class="property-label"><g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" /></span>
					
						<g:each in="${prodottoInstance.internazionalizzazioni}" var="i">
						<span class="property-value" aria-labelledby="internazionalizzazioni-label"><g:link controller="internazionalizzazioneProdotto" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.linea}">
				<li class="fieldcontain">
					<span id="linea-label" class="property-label"><g:message code="prodotto.linea.label" default="Linea" /></span>
					
						<span class="property-value" aria-labelledby="linea-label"><g:link controller="linea" action="show" id="${prodottoInstance?.linea?.id}">${prodottoInstance?.linea?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.tipoProdotto}">
				<li class="fieldcontain">
					<span id="tipoProdotto-label" class="property-label"><g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /></span>
					
						<span class="property-value" aria-labelledby="tipoProdotto-label"><g:link controller="tipoProdotto" action="show" id="${prodottoInstance?.tipoProdotto?.id}">${prodottoInstance?.tipoProdotto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.top}">
				<li class="fieldcontain">
					<span id="top-label" class="property-label"><g:message code="prodotto.top.label" default="Top" /></span>
					
						<span class="property-value" aria-labelledby="top-label"><g:fieldValue bean="${prodottoInstance}" field="top"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:prodottoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${prodottoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
