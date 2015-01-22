<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="ordine.confermaOrdine.title"/></title>
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
                           
                <g:render template="/ordine/ordineTable" model="[mostraCostoSpedizione: true, solaLettura:true, cancellazione:true]"></g:render>
                
                <g:link class="btn btn-success" controller="ordine" action="selezionaModalitaPagamento" params="[taskId: taskId]">
                    <g:message code="ordine.confermaOrdineSI.button" />
                </g:link>
                
                <g:link class="btn btn-info" controller="ordine" action="modificaOrdine" params="[taskId: taskId]">
                    <g:message code="ordine.modificaOrdine.button" />
                </g:link>
                
                <g:link class="btn btn-danger" controller="ordine" action="annullaOrdine" params="[taskId: taskId, conferma: 0]">
                    <g:message code="ordine.annullaOrdine.button" />
                </g:link>
           </g:else>
           
            
        </div>
    </body>
</html>
