<%@ page import="it.ggg.sa.security.User" %>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
  <div class="col-sm-3">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
  </div>
  <div class="col-sm-5">
	<g:textField name="username" class="form-control input-sm" required="" value="${userInstance?.username}"/>
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
  <div class="col-sm-3">
    <label for="firstName">
        <g:message code="user.firstName.label" default="firstName" />
    </label>
  </div>
  <div class="col-sm-5">
    <g:textField name="firstName" class="form-control input-sm" value="${userInstance?.firstName}"/>
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
  <div class="col-sm-3">
    <label for="lastName">
        <g:message code="user.lastName.label" default="lastName" />
    </label>
  </div>
  <div class="col-sm-5">
    <g:textField name="lastName" class="form-control input-sm"  value="${userInstance?.lastName}"/>
  </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
  <div class="col-sm-3">
    <label for="email">
        <g:message code="user.email.label" default="Email" />
        <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <g:textField name="email" class="form-control input-sm" required="" value="${userInstance?.email}"/>
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
  <div class="col-sm-3">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
	</label>
  </div>
  <div class="col-sm-5">
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
  <div class="col-sm-3">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
	</label>
  </div>
  <div class="col-sm-5">
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
  <div class="col-sm-3">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
	</label>
  </div>
  <div class="col-sm-5">
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
  </div>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
  <div class="col-sm-3">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
	</label>
  </div>
  <div class="col-sm-5">
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
  </div>
</div>

