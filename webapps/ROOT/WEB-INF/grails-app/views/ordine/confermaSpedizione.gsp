<%@page import="it.ggg.sa.ordine.Ordine"%>
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
                           
                <g:render template="/carrello/carrelloTable" 
                    model="[mostraCostoSpedizione: false, controller: 'confezioneOrdine', carrelloInstance: ordine, confezioniCarrello: Ordine.confezioniOrdineToJSON(ordine?.confezioniOrdine, lang), solaLettura:true]"></g:render>
                
				<g:link class="btn btn-success" controller="ordine" action="esitoConfermaSpedizione" params="[taskId: taskId]">
				    <g:message code="ordine.confermaSpedizione.button" default="Conferma spedizione"/>
			    </g:link>
           </g:else>
        </div>
    </body>
</html>
