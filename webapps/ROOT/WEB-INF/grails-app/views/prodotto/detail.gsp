<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<%@ page import="it.ggg.sa.carrello.Carrello" %>
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
            <h1>${internazionalizzazione.nome.toLowerCase().capitalize()}</h1>
            <p >${internazionalizzazione.note}</p>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <div >
                <div class="row">
                    <div class="col-md-5">
                        <img  src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}"  style="width: 100%;" class="img-rounded"/>
                    </div>
                    <div class="col-md-7">
                      <small>
                        <ul class="list-group">
                           <g:each in="${ prodottoInstance.confezioni }" var="confezione" >
                               <li class="list-group-item list-group-item-info">
                                   <span >
                                       <%--<a class="btn btn-success btn-sm pull-right addToChart" id="${confezione.id}">
                                           <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />
                                       </a>--%>
                                       <g:link controller="carrello" action="add" id="${confezione.id}" class="btn btn-success btn-sm pull-right">
	                                       <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />
	                                   </g:link>
                                   </span>
                                   <div style="min-height:40px;">${confezione.getDescrizione(lang.toString())}</div>
                                   <div>${confezione.prezzo} &euro; ${confezione.unitaMisura}</div>
                               </li>
                           </g:each>
                        </ul>
                      </small>
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
                
                <%--
				<!-- Large modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
				
				<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <g:render template="/carrello/carrelloTable" model="[carrelloInstance: Carrello.get(1)]"></g:render>
				    </div>
				  </div>
				</div>
                --%>
                
                <g:render template="rating"></g:render>
            </div>
      </div>
<%--<jq:jquery>
$('.addToChart').bind( "click", function(event, ui){
    var element = $(this);
    $.ajax('${createLink(controller:'carrello',action:'add', id:element.id) }',{
        statusCode: {
            404: function() {
                            $("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h3> Errore nell'aggiornamento dello stato di pubblicazione.  </h3></div>").css({ "display": "block", "opacity": 0.96, "top": $(window).scrollTop() + 100 })
                                .appendTo( $.mobile.pageContainer )
                                .delay( 1500 )
                                .fadeOut( 800, function(){
                                        $(this).remove();
                                });
                                element.removeAttr('checked');
                                element.checkboxradio('refresh');
                        },
            405: function() {
                            $("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h3> Errore nell'aggiornamento dello stato di pubblicazione: l'oggetto non è più disponibile.  </h3></div>").css({ "display": "block", "opacity": 0.96, "top": $(window).scrollTop() + 100 })
                                .appendTo( $.mobile.pageContainer )
                                .delay( 1500 )
                                .fadeOut( 800, function(){
                                        $(this).remove();
                                });
                                element.removeAttr('checked');
                                element.checkboxradio('refresh');
                        },
            401: function() {
                element.removeAttr('checked');
                element.checkboxradio('refresh');
                showLoginDialog();
            }
        }
    });
});
</jq:jquery>--%>

    </body>
</html>
