
<%@ page import="it.ggg.sa.security.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'Utente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<%--<ol class="property-list user">--%>
            <dl class="dl-horizontal"> <%-- class="dl-horizontal" --%>
			
			
				<g:if test="${userInstance?.username}">
					<dt><g:message code="user.username.label" default="Username" /></dt>
					<dd><g:fieldValue bean="${userInstance}" field="username"/></dd>
				</g:if>
			
			    <g:if test="${userInstance?.firstName}">
                    <dt><g:message code="user.firstName.label" default="FirstName" /></dt>
                    <dd><g:fieldValue bean="${userInstance}" field="firstName"/></dd>
                </g:if>
				
				<g:if test="${userInstance?.lastName}">
                    <dt><g:message code="user.lastName.label" default="LastName" /></dt>
                    <dd><g:fieldValue bean="${userInstance}" field="lastName"/></dd>
                </g:if>
                
                <g:if test="${userInstance?.email}">
                    <dt><g:message code="user.email.label" default="email" /></dt>
                    <dd><g:fieldValue bean="${userInstance}" field="email"/></dd>
                </g:if>
                
                <%--<g:if test="${userInstance?.password}">
					<dt><g:message code="user.password.label" default="Password" /></dt>
					<dd><g:fieldValue bean="${userInstance}" field="password"/></dd>
				</g:if>--%>
			
				<g:if test="${userInstance?.accountExpired}">
					<dt><g:message code="user.accountExpired.label" default="Account Expired" /></dt>
					<dd><g:formatBoolean boolean="${userInstance?.accountExpired}" /></dd>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
					<dt><g:message code="user.accountLocked.label" default="Account Locked" /></dt>
					<dd><g:formatBoolean boolean="${userInstance?.accountLocked}" /></dd>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
					<dt><g:message code="user.enabled.label" default="Enabled" /></dt>
					<dd><g:formatBoolean boolean="${userInstance?.enabled}" /></dd>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
					<dt><g:message code="user.passwordExpired.label" default="Password Expired" /></dt>
					<dd><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></dd>
				</g:if>
			</dl>
			<%--</ol>--%>
			<g:form ><%--url="[resource:userInstance, action:'delete']" method="DELETE" --%>
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" id="${userInstance.id}" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
