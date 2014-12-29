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
            
            <div class="page-header">
			  <h1>${internazionalizzazione.nome.toLowerCase().capitalize()}<br><small>${internazionalizzazione.note}</small></h1>
			</div>
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div >
                <div class="row">
                    <div class="col-sm-5">
                        <img  src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}"  style="width: 100%;" class="img-rounded"/>
                    </div>
                    <div class="col-sm-7">
                      
                        <ul class="list-group">
                           <g:each in="${ confezioni }" var="confezione" >
                               <li class="list-group-item list-group-item-info">
                                   <span >
                                       <a href="#" id="${confezione.id}" class="btn btn-success btn-sm pull-right addToChart">
                                           <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                                           <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />                                           
                                       </a>
                                   </span>
                                   <div style="min-height:40px;">${confezione.descrizione}</div>
                                   <h4 style="margin-top: 5px; margin-bottom: 0px;">
	                                    &euro; <g:formatNumber number="${confezione.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/> ${confezione.unitaMisura}
                                   </h4>    
                                                                
                               </li>
                           </g:each>
                        </ul>
                    </div>
                </div>
                <br>
                <%--Ingredienti, come consumarlo e conservazione --%>
                <g:render template="details"></g:render> 
                
                <%--Stelline con il rating medio del prodotto--%>
                <g:mediaRatings id="${prodottoInstance.id}"/>
                
                <%--Commenti al prodotto --%>
                <g:commentiProdotto id="${prodottoInstance.id}"/>
            </div>
        </div>

		<script> 
		  var getValidPostcodeValuesURL = "${createLink(controller:'carrello',action:'add')}";
		  var carrelloId=${carrelloInstance.id};
	    </script>	    
        
		<!-- Modal -->
		<g:render template="/carrello/modalCarrello"></g:render>
                
        
      </div>
    </body>
</html>
