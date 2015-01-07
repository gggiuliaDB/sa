
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prodotto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prodotto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="durata" title="${message(code: 'prodotto.durata.label', default: 'Durata')}" />
					
						<g:sortableColumn property="immagine" title="${message(code: 'prodotto.immagine.label', default: 'Immagine')}" />
					
						<th><g:message code="prodotto.linea.label" default="Linea" /></th>
					
						<th><g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /></th>
					
						<g:sortableColumn property="top" title="${message(code: 'prodotto.top.label', default: 'Top')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prodottoInstance.id}">${fieldValue(bean: prodottoInstance, field: "durata")}</g:link></td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "immagine")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "linea")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "tipoProdotto")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "top")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prodottoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
