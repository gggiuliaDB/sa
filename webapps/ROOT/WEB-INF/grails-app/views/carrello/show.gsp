
<%@ page import="it.ggg.sa.carrello.Carrello" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'carrello.label', default: 'Carrello')}" />
        <title><g:message code="carrello.label" /></title>
    </head>
    <body>
        <div class="container">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <span id="dateCreated-label" class="property-label"><g:message code="carrello.dateCreated.label" default="Date Created" /></span>
            <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${carrelloInstance?.dateCreated}" /></span>
            <br>
            
            <ul class="list-group">
                <g:each in="${carrelloInstance.confezioniCarrello}" var="c">
                    <li class="list-group-item list-group-item-info">
                        <span >
                            <g:link controller="carrello" action="remove" id="${c.id}" class="btn btn-success btn-sm pull-right">
                                Rimuovi
                            </g:link>
                        </span>
                        <h4>${c.confezione.prodotto.nome}</h4>
                        <p>${c.confezione.descrizione}</p>
                    </li>
                </g:each>
            </ul>
            
            <!--
            <ol class="property-list carrello">
            
                <g:if test="${carrelloInstance?.confezioniCarrello}">
                <li class="fieldcontain">
                    <span id="confezioniCarrello-label" class="property-label"><g:message code="carrello.confezioniCarrello.label" default="Confezioni Carrello" /></span>
                    
                        <g:each in="${carrelloInstance.confezioniCarrello}" var="c">
                        <span class="property-value" aria-labelledby="confezioniCarrello-label"><g:link controller="confezioneCarrello" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
                        </g:each>
                    
                </li>
                </g:if>
            
                <g:if test="${carrelloInstance?.dateCreated}">
                <li class="fieldcontain">
                    <span id="dateCreated-label" class="property-label"><g:message code="carrello.dateCreated.label" default="Date Created" /></span>
                    
                        <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${carrelloInstance?.dateCreated}" /></span>
                    
                </li>
                </g:if>
            
                <g:if test="${carrelloInstance?.utente}">
                <li class="fieldcontain">
                    <span id="utente-label" class="property-label"><g:message code="carrello.utente.label" default="Utente" /></span>
                    
                        <span class="property-value" aria-labelledby="utente-label"><g:link controller="user" action="show" id="${carrelloInstance?.utente?.id}">${carrelloInstance?.utente?.encodeAsHTML()}</g:link></span>
                    
                </li>
                </g:if>
            
            </ol>
            <g:form url="[resource:carrelloInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${carrelloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            -->
        </div>
    </body>
</html>
