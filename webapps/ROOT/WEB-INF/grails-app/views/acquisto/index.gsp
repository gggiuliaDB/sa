
<%@ page import="it.ggg.sa.acquisto.Acquisto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'acquisto.label', default: 'Acquisto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-acquisto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-acquisto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'acquisto.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="statoPagamento" title="${message(code: 'acquisto.statoPagamento.label', default: 'Stato Pagamento')}" />
					
						<th><g:message code="acquisto.utente.label" default="Utente" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${acquistoInstanceList}" status="i" var="acquistoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${acquistoInstance.id}">${fieldValue(bean: acquistoInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: acquistoInstance, field: "statoPagamento")}</td>
					
						<td>${fieldValue(bean: acquistoInstance, field: "utente")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${acquistoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
