
<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-internazionalizzazioneProdotto" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descrizione" title="${message(code: 'internazionalizzazioneProdotto.descrizione.label', default: 'Descrizione')}" />
					
						<g:sortableColumn property="comeGustarlo" title="${message(code: 'internazionalizzazioneProdotto.comeGustarlo.label', default: 'Come Gustarlo')}" />
					
						<g:sortableColumn property="ingredienti" title="${message(code: 'internazionalizzazioneProdotto.ingredienti.label', default: 'Ingredienti')}" />
					
						<g:sortableColumn property="conservazione" title="${message(code: 'internazionalizzazioneProdotto.conservazione.label', default: 'Conservazione')}" />
					
						<g:sortableColumn property="note" title="${message(code: 'internazionalizzazioneProdotto.note.label', default: 'Note')}" />
					
						<g:sortableColumn property="locale" title="${message(code: 'internazionalizzazioneProdotto.locale.label', default: 'Locale')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${internazionalizzazioneProdottoInstanceList}" status="i" var="internazionalizzazioneProdottoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${internazionalizzazioneProdottoInstance.id}">${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "descrizione")}</g:link></td>
					
						<td>${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "comeGustarlo")}</td>
					
						<td>${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "ingredienti")}</td>
					
						<td>${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "conservazione")}</td>
					
						<td>${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "note")}</td>
					
						<td>${fieldValue(bean: internazionalizzazioneProdottoInstance, field: "locale")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${internazionalizzazioneProdottoInstanceCount ?: 0}" />
			</div>
		</div>
      </div>
	</body>
</html>
