<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-prodotto" class="content scaffold-create" role="main">
			<h2><g:message code="default.create.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
                 <div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${prodottoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${prodottoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:uploadForm url="[resource:prodottoInstance, action:'update']"  class="form-horizontal">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create"  class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
                </fieldset>
            </g:uploadForm>
			<%--         
            <g:form url="[resource:prodottoInstance, action:'update']"  class="form-horizontal">
				<fieldset class="form">
					<g:render template="form"/>									
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create"  class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
				</fieldset>
			</g:form>
        </div> --%>
      </div>
	</body>
</html>
