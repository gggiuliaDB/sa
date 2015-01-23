
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	  <div class="container" >
        
		<div class="nav" role="navigation">
			<ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		
		<div id="list-prodotto" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
				<div class="alert alert-success" >${flash.message}</div>
			</g:if>
			
			<table class="table table-hover table-condensed">
                <thead>
					<tr>
						<%--<g:sortableColumn property="id" title="${message(code: 'prodotto.id.label', default: 'ID')}" />--%>
                        <th>${message(code: 'prodotto.nome.label', default: 'Nome')}</th>
                        <th>${message(code: 'prodotto.linea.label', default: 'Linea')}</th>
                        <th>${message(code: 'prodotto.tipo.label', default: 'Tipo')}</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<%--<td>${fieldValue(bean: prodottoInstance, field: "id")}</td>--%>
	                        <td>${prodottoInstance}</td>
                            <td>${prodottoInstance.linea}</td>
                            <td>${prodottoInstance.tipoProdotto}</td>
							<td>
							     <g:link action="show" id="${prodottoInstance.id}"><span class="glyphicon glyphicon-chevron-right"></span></g:link>
                            </td>
                            <td>
                                 <g:link action="edit" id="${prodottoInstance.id}"><span class="glyphicon glyphicon-edit"></span></g:link>
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
	</body>
</html>
