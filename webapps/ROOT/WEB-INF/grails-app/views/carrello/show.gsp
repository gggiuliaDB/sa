<%@ page import="it.ggg.sa.carrello.Carrello" %>
<%@ page import="it.ggg.sa.ordine.Ordine" %>
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
                            
	            <g:render template="carrelloTable" 
	               model="[mostraCostoSpedizione: true, controller: 'confezioneCarrello', carrelloInstance: carrelloInstance, confezioniCarrello: Carrello.confezioniCarrelloToJSON(carrelloInstance?.confezioniCarrello, lang)]">
	            </g:render>
	            
	            <div class="col-md-5">
			        <div class="panel panel-success">
			            <div class="panel-body panel-detail">
		                   <h3>Quanto costa la spedizione?</h3>
		                   <hr>
		                   <strong>8,00&euro;</strong> <small>per acquisti fino a 50&euro;</small><br/>
		                   <strong>5,00&euro;</strong> <small>per acquisti tra 50&euro; e 100&euro;</small><br/>
		                   <strong>GRATIS</strong> <small>per acquisti superiori a 100&euro;</small><br/>
			            </div>
			        </div>
                </div>
	            
                <div class="col-md-12">
		            <g:link controller="ordine" action="procedi" id="${carrelloInstance.id}" class="btn btn-info pull-right ">
	                    <g:message code="button.richiediDisponobilita.label" />
	                </g:link>                
	                
		            <g:link controller="prodotto" action="search" class="btn btn-success">
		                <g:message code="button.continuaShopping.label" />
		            </g:link>	            
		            
		            <g:link controller="carrello" action="svuota" id="${carrelloInstance.id}" class="btn btn-warning">
		                <g:message code="button.svuotaCarrello.label" />
	                </g:link>
               </div>
            </g:else>
        </div>
    </body>
</html>
