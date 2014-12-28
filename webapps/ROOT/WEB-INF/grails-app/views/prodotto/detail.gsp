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

            <%--<g:render template="/carrello/carrelloTable" ></g:render>--%>
            <div >
                <div class="row">
                    <div class="col-sm-5">
                        <img  src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}"  style="width: 100%;" class="img-rounded"/>
                    </div>
                    <div class="col-sm-7">
                      <small>
                        <ul class="list-group">
                           <g:each in="${ prodottoInstance.confezioni }" var="confezione" >
                               <li class="list-group-item list-group-item-info">
                                   <span >
                                       <a href="#" id="${confezione.id}" class="btn btn-success btn-sm pull-right addToChart">
                                           <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                                           <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />                                           
                                       </a>
                                       <%--<g:link controller="carrello" action="add" id="${confezione.id}" class="btn btn-success btn-sm pull-right addToChart">
	                                       <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
	                                       <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />	                                       
	                                   </g:link>--%>
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
                <g:render template="details"></g:render>               
                <g:render template="rating"></g:render>
            </div>
        </div>
        


		<script> 
		  var getValidPostcodeValuesURL = "${createLink(controller:'carrello',action:'add')}";
		  var carrelloId=${carrelloInstance.id};
	    </script>
	    
	    
	    
	    
		<!-- Button trigger modal -->
		<%--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
		  Launch demo modal
		</button>--%>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel"><g:message code="menu.carrello.label"/> </h4>
		      </div>
		      <div class="modal-body">
		        <g:render template="/carrello/carrelloTable" ></g:render>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal"><g:message code="button.continuaShopping.label" /></button>
		        <button type="button" class="btn btn-success"><g:message code="button.vaiACarrello.label" /></button>
		      </div>
		    </div>
		  </div>
		</div>        
        
      </div>
    </body>
</html>
