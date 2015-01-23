<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="ordine.controlloDisponibilita.title"/></title>
    </head>
    <body>
        <div class="container">
            <h2><g:message code="ordine.controlloDisponibilita.title"/></h2>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else> 
           
                <g:render template="/ordine/ordineTable"  model="[mostraCostoSpedizione: false, solaLettura:false, cancellazione:false]"></g:render>
                
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
