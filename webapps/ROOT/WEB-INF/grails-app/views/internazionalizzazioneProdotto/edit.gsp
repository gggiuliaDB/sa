<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-internazionalizzazioneProdotto" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${internazionalizzazioneProdottoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${internazionalizzazioneProdottoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:internazionalizzazioneProdottoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${internazionalizzazioneProdottoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
