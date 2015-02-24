<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="pagamento.transazione.completa.title"/></title>
    </head>
    <body id="body">
        <div class="container">
    
	        <h2><g:message code="pagamento.transazione.completa.title"/></h2>
	    
	        <g:message code="pagamento.transazione.completa.message"/>
	        
	        <div id="transactionSummary" class="transactionSummary">
	            <div class="transSummaryItem">
	                <span class="transSummaryItemName">Transaction ID:</span>
	                <span class="transSummaryItemValue">${payment.transactionId}</span>
	            </div>
	            <g:render template="txsummary" model="[payment:payment]"/> 
	        </div>
	        
        </div>
    </body>
</html>