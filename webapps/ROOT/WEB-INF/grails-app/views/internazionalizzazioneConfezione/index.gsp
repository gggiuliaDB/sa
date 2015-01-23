
<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneConfezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internazionalizzazioneConfezione.label', default: 'InternazionalizzazioneConfezione')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-internazionalizzazioneConfezione" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descrizione" title="${message(code: 'internazionalizzazioneConfezione.descrizione.label', default: 'Descrizione')}" />
					
						<th><g:message code="internazionalizzazioneConfezione.confezione.label" default="Confezione" /></th>
					
						<g:sortableColumn property="locale" title="${message(code: 'internazionalizzazioneConfezione.locale.label', default: 'Locale')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${internazionalizzazioneConfezioneInstanceList}" status="i" var="internazionalizzazioneConfezioneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${internazionalizzazioneConfezioneInstance.id}">${fieldValue(bean: internazionalizzazioneConfezioneInstance, field: "descrizione")}</g:link></td>
					
						<td>${fieldValue(bean: internazionalizzazioneConfezioneInstance, field: "confezione")}</td>
					
						<td>${fieldValue(bean: internazionalizzazioneConfezioneInstance, field: "locale")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${internazionalizzazioneConfezioneInstanceCount ?: 0}" />
			</div>
		</div>
      </div>
	</body>
</html>
