<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <h1><g:message code="ordine.controlloDisponibilita.title"/></h1>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else>
            
                <g:render template="ordineTable" ></g:render>
                
				<g:link class="btn btn-success" controller="ordine" action="esitoMerceDisponibile" params="[taskId: taskId, disponibile: 1]">
				    <g:message code="ordine.merceDisponibile.button" />
			    </g:link>
				<g:link class="btn btn-danger" controller="ordine" action="esitoMerceDisponibile" params="[taskId: taskId, disponibile: 0]">
				    <g:message code="ordine.merceNonDisponibile.button" />
				</g:link>
           </g:else>
        </div>
    </body>
</html>
