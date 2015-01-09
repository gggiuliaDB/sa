<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-prodotto" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${prodottoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${prodottoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:prodottoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${prodottoInstance?.version}" />
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
