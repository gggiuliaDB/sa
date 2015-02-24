<%@ page import="it.ggg.sa.prodotto.Linea" %>
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
          
	</head>
	<body>
        <r:require module="slick"/>
        
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
	    </g:if>
					
        <div class="container">
			<%--<g:render template="carousel"></g:render> --%>
			
			<div class="your-class">
			  <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                   <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
                   <div class="item ${i==0 ? 'active' : ''}">
                       <div class="col-md-6">      
                           <h3 style="font-family: sans-serif;font-size: x-large;">
                              <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</g:link>
                           </h3>
                           <p>${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</p>
                       </div>
                       <div class="col-md-6">      
                          <img class="img-responsive" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" />
                       </div>
                   </div>
              </g:each>    
			</div>
		    
            <h3 style="text-align: center;">
               <span>Prodotti consigliati</span>
            </h3>
            
            <div class="row">					
                <div class="col-md-2">
                    <g:render template="tipi" ></g:render>                                        
                </div>
                <div class="col-md-10">
                    <g:if test="${flash.message}">
                        <div class="alert alert-success" role="status">${flash.message}</div>
                    </g:if>                    
                    <g:render template="topProducts" model="[prodottoInstanceList: topProducts]"></g:render>
                </div>
			</div>
		</div>
	</body>
</html>
