<%@page import="it.ggg.sa.ordine.Ordine"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="ordine.esitoPagamento.title" /></title>
    </head>
    <body>
        <div class="container">
            <h1><g:message code="ordine.esitoPagamento.title"/></h1>
            

			 <g:if test="${flash.error}">
			    <div class="alert alert-danger" role="alert">
			        ${flash.error}
			    </div>                       
			</g:if>
			
			 <g:if test="${flash.message}">
			    <div class="alert alert-info" role="alert">
			        ${flash.message}
			    </div>                       
			</g:if>
			
			${msg}
        </div>
    </body>
</html>
			