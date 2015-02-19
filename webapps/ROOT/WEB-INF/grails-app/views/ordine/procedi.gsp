<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="ordine.richiestaDisponibilita.title" /></title>
	</head>
	<body>
		<div class="container">
            <h2><g:message code="ordine.richiestaDisponibilita.title"/></h2>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:elseif test="${flash.message }">
                <div class="alert alert-info" role="alert">
                    ${flash.message}
                </div>   
            </g:elseif>
            <g:else>
                <div class="alert alert-success" role="alert"><g:message code="ordine.avvioProcesso.message"/></div>
                
                    
			    <%--<paypal:button
			           itemName="${ordineInstance.id}"
			           itemNumber="${ordineInstance.id}"
			           discountAmount="${0}"
			           amount="${totale}"
			           buyerId="${ordineInstance.utente }"/>--%>
            </g:else>
                
        </div>
	</body>
</html>
