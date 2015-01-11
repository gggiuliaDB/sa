<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<%--<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="edit-confezione" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /> ${confezioneInstance}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${confezioneInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${confezioneInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:confezioneInstance, action:'update']" method="PUT" class="form-horizontal">
				<g:hiddenField name="version" value="${confezioneInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
                <br>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
