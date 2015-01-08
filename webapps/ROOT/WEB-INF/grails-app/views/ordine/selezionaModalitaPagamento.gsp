<%@page import="it.ggg.sa.ordine.Ordine"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <h1><g:message code="ordine.selezionaModalitaPagamento.title"/></h1>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else>
                
                <paypal:button
                       itemName="${ordineInstance.id}"
                       itemNumber="${ordineInstance.id}"
                       discountAmount="${0}"
                       amount="${totale}"
                       buyerId="${ordineInstance.utente }"/>
           </g:else>
        </div>
    </body>
</html>
