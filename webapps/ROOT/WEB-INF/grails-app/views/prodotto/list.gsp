<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title>Elenco prodotti</title>
		<r:require module="prodotto"/>
		
	</head>
	<body>
        <div class="container" >
	        <g:if test="${flash.message}">
	            <div class="alert alert-success" >${flash.message}</div>
	        </g:if>
	        <g:if test="${flash.error}">
	            <div class="alert alert-warning" >${flash.error}</div>
	        </g:if>

	        <%--Creazione e modifica di un prodotto (angular.js)--%>
	        <div id="prodottoApp" >
	            <div id="prodottoController" ng-controller="prodottoController" ng-init="init('<g:createLink  uri=""/>', ${idProdotto})">
			 
			        <div  ng-show="error_message" class="alert alert-warning">{{error_message}}</div>
	                
	       	        <a id="createProdotto" class="btn btn-info" >
			             <g:message code="default.new.label" args="[entityName]" />        
			        </a>
			        
			        <g:render template="collapseProdotto"></g:render>	                
	                <hr>
	            </div>
	        </div>				
			
			<%--Lista dei prodotti --%>
			<div id="list-prodotto" class="content scaffold-list" role="main">
				<h2>Elenco prodotti</h2>
				
				<%--Cerca--%>
	            <div class="row">
	                <div class="col-md-3">
	                    <g:form class="form" role="search" controller="prodotto" action="list" >
	                        <div class="form-group">
	                          <div class="input-group input-group-md">
	                              <input type="text" 
	                                class="form-control" 
	                                placeholder="<g:message code='menu.cerca.placeholher.label' default='Cerca'/>" 
	                                aria-describedby="basic-addon3"  
	                                name="qList" 
	                                value="${qList}">                   
	                              
	                              <span class="input-group-btn">
                                    <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-search"></span></button>
	                              </span>                     
	                          </div>                   
	                        </div>
	                    </g:form>
	                </div>
	            </div>
				
				<%--Tabella con i prodotti --%>
				<table class="table table-condensed">
	                <thead>
						<tr>
	                        <th>${message(code: 'prodotto.nome.label', default: 'Nome')}</th>
	                        <th>${message(code: 'prodotto.linea.label', default: 'Linea')}</th>
	                        <th>${message(code: 'prodotto.tipo.label', default: 'Tipo')}</th>
						</tr>
					</thead>
					<tbody>
					    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
		                        <td>${prodottoInstance}</td>
		                           <td>${prodottoInstance.linea}</td>
		                           <td>${prodottoInstance.tipoProdotto}</td>
		                           <td>
		                              <a class="editProdotto" id="${prodottoInstance.id}" href="#">
		                               Modifica
	                                  </a>
	                              </td>
							</tr>
						</g:each>
					</tbody>
				</table>
			
				<div class="pagination" id="paginazione">
					<g:paginate total="${prodottoInstanceCount ?: 0}" params="[qList:qList]"/>
				</div>
			</div>
        </div>
	  
        <script> 
          var urlCreate = "${createLink(controller:'prodotto',action:'create')}";
          var urlEdit = "${createLink(controller:'prodotto',action:'edit')}";
          var urlAddConfezione = "${createLink(controller:'prodotto',action:'addConfezione')}";
          <%--var urlAddI18 = "${createLink(controller:'prodotto',action:'addI18')}";--%>
          <%--var urlTranslate = "${createLink(controller:'prodotto',action:'getI18')}";--%>
          <%--var urlI18 = "${createLink(controller:'internazionalizzazioneProdotto',action:'listForProdottoJSON')}";--%>
        </script>     
	  
	</body>
</html>
