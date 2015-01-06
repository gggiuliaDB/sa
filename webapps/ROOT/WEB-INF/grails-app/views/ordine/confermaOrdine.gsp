<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <h1><g:message code="ordine.confermaOrdine.title"/></h1>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else>
                
                <g:render template="ordineTable" ></g:render>
                
				<g:link class="btn btn-success" controller="ordine" action="esitoConfermaOrdine" params="[taskId: taskId, conferma: 1]">
				    <g:message code="ordine.confermaOrdineSI.button" />
			    </g:link>
				<g:link class="btn btn-danger" controller="ordine" action="esitoConfermaOrdine" params="[taskId: taskId, conferma: 0]">
				    <g:message code="ordine.confermaOrdineNO.button" />
			    </g:link>
           </g:else>
        </div>
    </body>
</html>
