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
            <h1><g:message code="carrello.label" /><%--<g:message code="default.show.label" args="[entityName]" /> --%></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <span id="dateCreated-label" class="property-label"><g:message code="carrello.dateCreated.label" default="Date Created" /></span>
            <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${carrelloInstance?.dateCreated}" /></span>
            <br>
            
            
            <table class="table">
                <g:each in="${carrelloInstance.confezioniCarrello}" var="c">
                    <tr>
                        <td>
                            <img  src="${createLink(controller:'prodotto', action:'viewImage', id: c.confezione.prodotto.id)}"  style="width:100px;" class="img-rounded"/>                 
                        </td>
                        <td>
                            <h4>${c.confezione.prodotto.nome}</h4>
                            <p>${c.confezione.descrizione}</p>
                        </td>
                        <td>
                            <g:link controller="carrello" action="removeConfezione" id="${c.id}" params="[carrelloId: carrelloInstance.id]" class="btn btn-success btn-sm pull-right">
                                <g:message code="default.button.delete.label" />
                            </g:link>
                        </td>
                    </tr>
                </g:each>
            </table>
            
            <%--
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
            </ul>--%>
            
        </div>
    </body>
</html>
