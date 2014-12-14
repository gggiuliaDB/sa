
<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-confezione" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-confezione" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descrizione" title="${message(code: 'confezione.descrizione.label', default: 'Descrizione')}" />
					
						<g:sortableColumn property="sconto" title="${message(code: 'confezione.sconto.label', default: 'Sconto')}" />
					
						<g:sortableColumn property="note" title="${message(code: 'confezione.note.label', default: 'Note')}" />
					
						<g:sortableColumn property="peso" title="${message(code: 'confezione.peso.label', default: 'Peso')}" />
					
						<g:sortableColumn property="prezzo" title="${message(code: 'confezione.prezzo.label', default: 'Prezzo')}" />
					
						<th><g:message code="confezione.prodotto.label" default="prodotto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${confezioneInstanceList}" status="i" var="confezioneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${confezioneInstance.id}">${fieldValue(bean: confezioneInstance, field: "descrizione")}</g:link></td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "sconto")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "note")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "peso")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "prezzo")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "prodotto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${confezioneInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
