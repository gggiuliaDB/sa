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
        
        	        <a id="createProdotto" class="btn btn-primary" >
			             <g:message code="default.new.label" args="[entityName]" />        
			        </a>
			        <div class="collapse" id="collapseProdotto">
					  <div class="well1">
					    
					    <h2>{{titolo}}</h2>
					    <g:uploadForm url="[resource:prodottoInstance, action:'update']"  class="form-horizontal">
	   				        <g:hiddenField name="prodottoId" value="{{prodotto.id}}"/>
    prodotto.id: {{prodotto.id}}
			                <fieldset class="form">
			                    <g:render template="formProdotto"/>                     
								<g:render template="formImmagine"/>
								<g:render template="formI18"/>
								<g:render template="formConfezioni"/>                           
			                </fieldset>
			                <fieldset class="buttons">
			                    <g:submitButton id="salvaProdotto" name="save" class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
			                    <a id="annulla" class="btn btn-warning" href="#">Annulla</a>			                
			                </fieldset>
			            </g:uploadForm>
				    </div>
				</div>					
			</div>
        </div>	
		
		
		<%--Lista dei prodotti --%>
		<div id="list-prodotto" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			
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
                                        Edit
                                    </a>
                                </td>
							</tr>
					</g:each>
				</tbody>
			</table>
		
			<div class="pagination" id="paginazione">
				<g:paginate total="${prodottoInstanceCount ?: 0}" />
			</div>
		</div>
	  </div>
	  
	  <script> 
          var urlCreate = "${createLink(controller:'prodotto',action:'create')}";
          var urlEdit = "${createLink(controller:'prodotto',action:'edit')}";
      </script>     
	  
	</body>
</html>
