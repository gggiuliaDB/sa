<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="pagamento.transazione.annullata.title"/></title>
    </head>
    <body id="body">
        
        <h1><g:message code="pagamento.transazione.annullata.title"/></h1>

        <g:message code="pagamento.transazione.annullata.message"/>

        <div id="transactionSummary" class="transactionSummary">
            <g:render template="txsummary" model="[payment:payment]"/>
        </div>
    </body>
</html>