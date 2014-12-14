
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	  <div class="container">
	   
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
			
				<g:if test="${prodottoInstance?.descrizione}">
				<li class="fieldcontain">
					<span id="descrizione-label" class="property-label"><g:message code="prodotto.descrizione.label" default="Descrizione" /></span>
					
						<span class="property-value" aria-labelledby="descrizione-label"><g:fieldValue bean="${prodottoInstance}" field="descrizione"/></span>
					
				</li>
				</g:if>
			
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
			
				<g:if test="${prodottoInstance?.comeGustarlo}">
				<li class="fieldcontain">
					<span id="comeGustarlo-label" class="property-label"><g:message code="prodotto.comeGustarlo.label" default="Come Gustarlo" /></span>
					
						<span class="property-value" aria-labelledby="comeGustarlo-label"><g:fieldValue bean="${prodottoInstance}" field="comeGustarlo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.ingredienti}">
				<li class="fieldcontain">
					<span id="ingredienti-label" class="property-label"><g:message code="prodotto.ingredienti.label" default="Ingredienti" /></span>
					
						<span class="property-value" aria-labelledby="ingredienti-label"><g:fieldValue bean="${prodottoInstance}" field="ingredienti"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.conservazione}">
				<li class="fieldcontain">
					<span id="conservazione-label" class="property-label"><g:message code="prodotto.conservazione.label" default="Conservazione" /></span>
					
						<span class="property-value" aria-labelledby="conservazione-label"><g:fieldValue bean="${prodottoInstance}" field="conservazione"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.note}">
				<li class="fieldcontain">
					<span id="note-label" class="property-label"><g:message code="prodotto.note.label" default="Note" /></span>
					
						<span class="property-value" aria-labelledby="note-label"><g:fieldValue bean="${prodottoInstance}" field="note"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.linea}">
				<li class="fieldcontain">
					<span id="linea-label" class="property-label"><g:message code="prodotto.linea.label" default="linea" /></span>
					
						<span class="property-value" aria-labelledby="linea-label">
						      ${prodottoInstance?.linea?.encodeAsHTML()}
					    </span>
					
				</li>
				</g:if>
			
				<g:if test="${prodottoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="prodotto.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${prodottoInstance}" field="nome"/></span>
					
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
	  </div>
	</body>
</html>
