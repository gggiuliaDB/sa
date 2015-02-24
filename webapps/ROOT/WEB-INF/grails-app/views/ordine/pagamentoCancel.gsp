<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="pagamento.transazione.annullata.title"/></title>
    </head>
    <body id="body">
        <div class="container">
        
	        <h2><g:message code="pagamento.transazione.annullata.title"/></h2>
	
	        <g:message code="pagamento.transazione.annullata.message"/>
	
	        <div id="transactionSummary" class="transactionSummary">
	            <g:render template="txsummary" model="[payment:payment]"/> 
	        </div>
	    </div>
    </body>
</html>