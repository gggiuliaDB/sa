<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'acquisto.label', default: 'Acquisto')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
            <h1>Riepilogo</h1>
		    <g:render template="riepilogo" model="[acquisto: acquistoInstance]"></g:render>
		        
		        
            <paypal:button
		           itemName="${acquistoInstance.id}"
		           itemNumber="${acquistoInstance.id}"
		           discountAmount="${0}"
		           amount="${totale}"
		           buyerId="${acquistoInstance.utente }"/>
        </div>
	</body>
</html>
