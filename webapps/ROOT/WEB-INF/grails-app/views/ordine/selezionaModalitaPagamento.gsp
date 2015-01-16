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
            <h1><g:message code="ordine.selezionaModalitaPagamento.title"/></h1>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else>
            
                <h3>Totale ordine</h3>
                <div>${totale}</div>
                <%--<paypal:button
                       itemName="${ordineInstance.id}"
                       itemNumber="${ordineInstance.id}"
                       discountAmount="0"
                       amount="0.01"
                       buyerId="${ordineInstance.utente.id}"/>--%> 
                       
                 				
				<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
					<input type="hidden" name="cmd" value="_s-xclick">
					<input type="hidden" name="hosted_button_id" value="FS8E7SD65A8UJ">
					<input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - Il metodo rapido, affidabile e innovativo per pagare e farsi pagare.">
					<img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
                </form>
				
                       
				<%--
				<stripe:script formName="payment-form"/>
				
				<g:form controller="ordine" action="charge" method="POST" name="payment-form"> 
                    <g:hiddenField name="ordineId" value="${ordineInstance.id}"/>
                    <g:hiddenField name="taskId" value="${taskId}"/>
				    
				    <div class="form-row"> 
				        <label>Totale ordine (euro)</label> 
				        <input type="text" size="20" autocomplete="off" id="amount" name="amount" value="${totale}"/> 
			        </div>
				
				    <stripe:creditCardInputs cssClass="form-row"/>
				
				    <button type="submit" class="btn btn-success"><g:message code="pagamento.submitPayment.button" /></button> 
				</g:form>   
                --%>   
           </g:else>
        </div>
    </body>
</html>
