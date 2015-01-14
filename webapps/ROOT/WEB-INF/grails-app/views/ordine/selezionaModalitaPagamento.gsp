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
                <paypal:button
                       itemName="${ordineInstance.id}"
                       itemNumber="${ordineInstance.id}"
                       discountAmount="${0}"
                       amount="${totale}"
                       buyerId="${ordineInstance.utente }"/> 
                       
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
