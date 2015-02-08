<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
        
        <%--Creazione e modifica di un prodotto --%>
        <div id="prodottoApp" >
            <div id="prodottoController" 
		        ng-controller="prodottoController" 
		        ng-init="init('<g:createLink  uri=""/>')">
		 
                <div  ng-show="error_message" class="alert alert-warning">{{error_message}}</div>
        
        	        <a id="createProdotto" class="btn btn-info" >
			             <g:message code="default.new.label" args="[entityName]" />        
			        </a>
			        <div class="collapse" id="collapseProdotto">
					  <div class="well1">
					    
					    <h2>{{titolo}}</h2>
					    <g:uploadForm url="[resource:prodottoInstance, action:'update']"  class="form-horizontal">
	   				        <g:hiddenField name="prodottoId" value="{{prodotto.id}}"/>
			                <fieldset class="form">
			                    <g:render template="formProdotto"/>                     
								<g:render template="formImmagine"/>
                                <g:render template="formConfezioni"/>                           
								<%--<g:render template="formI18"/>--%>
								
			                </fieldset>
			                <fieldset class="buttons">
			                    <g:submitButton id="salvaProdotto" name="save" class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
			                    <a id="annulla" class="btn btn-warning" href="#">Annulla</a>			                
			                </fieldset>
			            </g:uploadForm>
				    </div>
				    <hr>
				</div>					
			</div>
        </div>	
		
		
		<%--Lista dei prodotti --%>
		<div id="list-prodotto" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			
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
          var urlAddI18 = "${createLink(controller:'prodotto',action:'addI18')}";
          var urlAddConfezione = "${createLink(controller:'prodotto',action:'addConfezione')}";
          var urlTranslate = "${createLink(controller:'prodotto',action:'editI18')}";
          
      </script>     
	  
	</body>
</html>
