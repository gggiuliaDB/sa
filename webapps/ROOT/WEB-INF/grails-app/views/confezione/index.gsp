
<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-confezione" class="content scaffold-list" role="main">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-hover table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="sconto" title="${message(code: 'confezione.sconto.label', default: 'Sconto')}" />
					
						<g:sortableColumn property="unitaMisura" title="${message(code: 'confezione.unitaMisura.label', default: 'Unita Misura')}" />
					
						<g:sortableColumn property="peso" title="${message(code: 'confezione.peso.label', default: 'Peso')}" />
					
						<g:sortableColumn property="durata" title="${message(code: 'confezione.durata.label', default: 'Durata')}" />
					
						<g:sortableColumn property="quantitaCartone" title="${message(code: 'confezione.quantitaCartone.label', default: 'Quantita Cartone')}" />
					
						<g:sortableColumn property="prezzo" title="${message(code: 'confezione.prezzo.label', default: 'Prezzo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${confezioneInstanceList}" status="i" var="confezioneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${confezioneInstance.id}">${fieldValue(bean: confezioneInstance, field: "sconto")}</g:link></td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "unitaMisura")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "peso")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "durata")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "quantitaCartone")}</td>
					
						<td>${fieldValue(bean: confezioneInstance, field: "prezzo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            <div class="pagination" id="paginazione">
				<g:paginate total="${confezioneInstanceCount ?: 0}" />
			</div>
		</div>
      </div>
	</body>
</html>
