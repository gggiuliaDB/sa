<%@ page import="it.ggg.sa.carrello.Carrello" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'carrello.label', default: 'Carrello')}" />
        <title><g:message code="carrello.label" /></title>
        <%--<r:require module="jqueryUI"/>--%>
        <%--<r:require module="carrello"/>--%>

    </head>
    <body>
        <div class="container">
            <h1><g:message code="carrello.label" /><%--<g:message code="default.show.label" args="[entityName]" /> --%></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
                        
            <g:render template="carrelloTable"></g:render>
            
            <g:link controller="prodotto" action="search" class="btn btn-default">
                <g:message code="button.continuaShopping.label" />
            </g:link>
            
            <g:link controller="carrello" action="procedi" id="${carrelloInstance.id}" class="btn btn-success">
                <g:message code="button.procediAcquisto.label" />
            </g:link>
        </div>
<%--		<jq:jquery>--%>
<%--		  $(function() {--%>
<%--		    $( ".spinner" ).spinner({--%>
<%--			  change: function( event, ui ) {--%>
<%--			     alert("aaa");--%>
<%--			  }--%>
<%--			});		    --%>
<%--		  });--%>
<%--		</jq:jquery>        --%>
    </body>
</html>


<%--
            <table class="table table-responsive table-condensed table-hover" style="font-size: small;">
                <thead>
                    <tr>
                        <th colspan="2"></th>
                        <th><g:message code="carrello.quantita.label" /></th>
                        <th><g:message code="carrello.prezzoUnitario.label" /></th>
                        <th><g:message code="carrello.prezzoTotale.label" /></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${carrelloInstance.confezioniCarrello}" var="c">
                        <tr>
                            <td style="vertical-align: middle;">
                                <img  src="${createLink(controller:'prodotto', action:'viewImage', id: c.confezione.prodotto.id)}"  style="width:100px;" class="img-rounded"/>                 
                            </td>
                            <td style="vertical-align: middle;">
                                <h4>${c.confezione.prodotto.nome}</h4>
                                <p>${c.confezione.descrizione}</p>
                            </td>
                            <td style="vertical-align: middle;">
                                <input id="spinner${c.id}" class="spinner" style="width:30px" name="value" value="${c.quantita}">
                            </td>
                            <td style="vertical-align: middle;">    
                                ${c.confezione.prezzo} &euro;
                            </td>
                            <td style="vertical-align: middle;">    
                                ${c.confezione.prezzo * c.quantita} &euro;
                            </td>
                            <td style="vertical-align: middle;">
                                <g:link controller="carrello" action="removeConfezione" id="${c.id}" params="[carrelloId: carrelloInstance.id]" class="btn btn-warning btn-sm pull-right">
                                    <g:message code="default.button.delete.label" />
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
            --%>
            