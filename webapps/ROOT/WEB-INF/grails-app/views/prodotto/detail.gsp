
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
      <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
      <g:if test="${!lang}">
        <g:set var="lang" value="it"/>
      </g:if>
      <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />


      <div class="container">
        <div id="show-prodotto" class="content scaffold-show" role="main">
            <h2>${internazionalizzazione.nome.toLowerCase().capitalize()}</h2>
            <h5>${internazionalizzazione.note}</h5>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <%--<g:render template="addToChart" model="[id: prodottoInstance.id]"></g:render>--%>

            <div >
                <div class="row">
                    <div class="col-md-5">
                        <img  src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}"  style="width: 100%;" class="img-rounded"/>
                    </div>
                    <div class="col-md-7">
                        <div class="caption-full">

                            <div class="well confezionamento-table" >
                                <table class="table ">
                                    <g:each in="${ prodottoInstance.confezioni }" var="confezione" >
                                        <tr>
                                            <td>${confezione.descrizione}</td>
                                            <td>&euro;${confezione.prezzo}</td>
                                            <td class="pull-right">
                                                <g:link class="btn btn-success btn-sm">
                                                <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />
                                                </g:link>
                                            </td>
                                        </tr>
                                    </g:each>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-success">
                           <div class="panel-heading">
                                <h3 class="panel-title"><g:message code="prodotto.ingredienti.label"></g:message></h3>
                            </div>
                            <div class="panel-body panel-detail">
                                ${internazionalizzazione.ingredienti}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-success">
                           <div class="panel-heading">
                                <h3 class="panel-title"><g:message code="prodotto.comeConsumarlo.label"></g:message></h3>
                            </div>
                            <div class="panel-body panel-detail">
                                ${internazionalizzazione.comeGustarlo}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-success">
                           <div class="panel-heading">
                                <h3 class="panel-title"><g:message code="prodotto.conservazione.label"></g:message></h3>
                            </div>
                            <div class="panel-body panel-detail">
                                ${internazionalizzazione.conservazione}
                            </div>
                        </div>
                    </div>
                </div>


                <g:render template="rating"></g:render>
            </div>
      </div>
    </body>
</html>
