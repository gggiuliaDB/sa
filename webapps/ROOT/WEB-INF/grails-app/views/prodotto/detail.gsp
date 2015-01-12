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
            
            <ul class="breadcrumb">
			  <li><g:link controller="prodotto" >Home</g:link></li>
			  <li><g:link controller="prodotto" action="search" ><g:message code="visualizzaTutti.label"/></g:link></li>
			  <li>
			     <g:link controller="prodotto" action="search" params="[linea: prodottoInstance.linea.id]">
                    ${prodottoInstance.linea.getNome(lang.toString())}
                 </g:link>
              </li>
			  <li class="active">${internazionalizzazione.nome.toLowerCase().capitalize()}</li>
			</ul>
            
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
                                   <sec:access expression="hasRole('ROLE_USER')">
	                                   <span>
	                                       <a href="#" id="${confezione.id}" class="btn btn-success pull-right addToChart ">
	                                           <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
	                                           <g:message code="prodotto.addToChart.label" default="Aggiungi al carrello" />                                           
	                                       </a>
	                                   </span>
                                   </sec:access>
                                   <p style="min-height:30px;">
                                       ${confezione.descrizione}
                                   </p>
                                   
                                   <div >
                                       <strong>&euro; <g:formatNumber number="${confezione.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/> ${confezione.unitaMisura.toString(lang.toString())}</strong>
	                                   <g:if test="${confezione.sconto!=null}">
                                            <s>&euro; <g:formatNumber number="${confezione.prezzoNS}" type="currency" currencyCode="EUR" currencySymbol=""/> ${confezione.unitaMisura.toString(lang.toString())}</s>
                                            <span class="label label-info">-${confezione.sconto*100}%</span>
                                       </g:if>               
                                   </div>
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
		  var url = "${createLink(controller:'carrello',action:'add')}";
		  var carrelloId=${carrelloInstance?.id};
		  var lang="${lang}"		  
	    </script>	    
        
		<!-- Modal -->
		<g:render template="/carrello/modalCarrello"></g:render>
                
        
      </div>
    </body>
</html>
