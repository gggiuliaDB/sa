
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
		}
		<div id="list-prodotto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:link class="btn btn-primary" action="aggiornaListino">Aggiorna listino</g:link>
			
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'prodotto.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="durata" title="${message(code: 'prodotto.durata.label', default: 'Durata')}" />
					
						<g:sortableColumn property="immagine" title="${message(code: 'prodotto.immagine.label', default: 'Immagine')}" />
					
						<g:sortableColumn property="comeGustarlo" title="${message(code: 'prodotto.comeGustarlo.label', default: 'Come Gustarlo')}" />
					
						<g:sortableColumn property="ingredienti" title="${message(code: 'prodotto.ingredienti.label', default: 'Ingredienti')}" />
					
						<g:sortableColumn property="conservazione" title="${message(code: 'prodotto.conservazione.label', default: 'Conservazione')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prodottoInstance.id}">${fieldValue(bean: prodottoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "durata")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "immagine")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "comeGustarlo")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "ingredienti")}</td>
					
						<td>${fieldValue(bean: prodottoInstance, field: "conservazione")}</td>
					
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
