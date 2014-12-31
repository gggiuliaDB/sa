<%@ page import="it.ggg.sa.carrello.Carrello" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'carrello.label', default: 'Carrello')}" />
        <title><g:message code="carrello.label" /></title>

    </head>
    <body>
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>
    
        <div class="container">
            <h1><g:message code="carrello.label" /><%--<g:message code="default.show.label" args="[entityName]" /> --%></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <%-- Se c'è un errore non deve mostrare il carrello (es per accesso non autorizzato) --%>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:else>                        
	            <g:render template="carrelloTable" ></g:render>
	            
	            <g:link controller="prodotto" action="search" class="btn btn-default">
	                <g:message code="button.continuaShopping.label" />
	            </g:link>
	            
	            <g:link controller="acquisto" action="procedi" id="${carrelloInstance.id}" class="btn btn-success">
	                <g:message code="button.procediAcquisto.label" />
	            </g:link>
	            
	            <g:link controller="carrello" action="svuota" id="${carrelloInstance.id}" class="btn btn-warning">
	                <g:message code="button.svuotaCarrello.label" />
            </g:link>
            </g:else>
        </div>
    </body>
</html>
