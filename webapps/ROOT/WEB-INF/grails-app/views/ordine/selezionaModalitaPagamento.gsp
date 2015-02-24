<%@page import="it.ggg.sa.ordine.Ordine"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="ordine.selezionaModalitaPagamento.title"/></title>
    </head>
    <body>
        <div class="container">
            <h2><g:message code="ordine.selezionaModalitaPagamento.title"/></h2>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>
            </g:if>
            <g:else>
                <h3>Totale ordine: &euro; ${totale}</h3>
                
                <g:if test="${totale != '0'}">
                    <paypal:button
                       itemName="Acquisto prodotti (id ordine: ${ordineInstance.id})"
                       itemNumber="${ordineInstance.id}"
                       discountAmount="0"
                       amount="${totale}"
                       buyerId="${ordineInstance.utente.id}"
                       currency="EUR"
                       buttonSrc="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynowCC_LG.gif" 
                       buttonAlt="PayPal - Il metodo rapido, affidabile e innovativo per pagare e farsi pagare."
                       returnController="ordine" returnAction="pagamentoSuccess"
                       cancelController="ordine" cancelAction="pagamentoCancel"/>
                </g:if>
                
           </g:else>
        </div>
    </body>
</html>
