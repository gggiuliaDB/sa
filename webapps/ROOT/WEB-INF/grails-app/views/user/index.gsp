
<%@ page import="it.ggg.sa.security.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'Utente')}" />
		<title><g:message code="elenco.utente" default="Elenco utenti"/></title>
	</head>
	<body>
      <div class="container" >
        <%--<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="elenco.utente" default="Elenco utenti"/></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-hover table-condensed">
			<thead>
					<tr>
						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                        <g:sortableColumn property="firstName" title="${message(code: 'user.firstName.label', default: 'FirstName')}" />
                        <g:sortableColumn property="lastName" title="${message(code: 'user.lastName.label', default: 'LastName')}" />
                        <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'email')}" />
						<g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
						<g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
						<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
						<g:sortableColumn property="passwordExpired" title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: userInstance, field: "username")}</td>
						<td>${userInstance.firstName}</td>
                        <td>${userInstance.lastName}</td>
                        <td>${userInstance.email}</td>
                        
						<td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
						<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
						<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
						<td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
						<td><g:link action="show" id="${userInstance.id}"><span class="glyphicon glyphicon-info-sign"></span></g:link></td>
						<td><g:link action="edit" id="${userInstance.id}"><span class="glyphicon glyphicon-edit"></span></g:link></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
      </div>
	</body>
</html>
