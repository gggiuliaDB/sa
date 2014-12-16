<%@ page import="it.ggg.sa.security.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>
        <div class="container" > 

        
            <h1><g:message code="cambioPassword.label" default="Cambio password"/></h1>
            <g:if test="${flash.message}">
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    ${flash.message}
                </div>
            </g:if>
            <g:hasErrors bean="${cambioPasswordCommand}">
                <div class="alert alert-error">
                <ul class="errors" role="alert">
                    <g:eachError bean="${cambioPasswordCommand}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </div>
            </g:hasErrors>
            <g:form method="post" class="form-horizontal">
                <div class="hero-unit">
                    
                    <div class="control-group fieldcontain ${hasErrors(bean: cambioPasswordCommand, field: 'nuovaPassword', 'error')} required">
                        <label class="control-label" for="username"><g:message code="user.nuova.password" default="Nuova Password" />: </label>
                        <div class="controls">
                            <g:passwordField name="nuovaPassword" value="${cambioPasswordCommand.nuovaPassword}" required=""/>
                        </div>
                    </div>
                    
                    <div class="control-group fieldcontain ${hasErrors(bean: cambioPasswordCommand, field: 'confermaPassword', 'error')} required">
                        <label class="control-label" for="password"> <g:message code="user.conferma.nuova.password" default="Ripeti nuova password" />: </label>
                        <div class="controls">
                            <g:passwordField name="confermaPassword" value="${cambioPasswordCommand.confermaPassword}" required=""/>
                        </div>
                    </div>
                    <br>
                
                    <div class="controls">
                        <fieldset class="buttons">
                            <g:actionSubmit class="btn btn-success" action="salvaCambioPassword" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </fieldset>
                    </div>
                </div>
            </g:form>
        </div>
    </body>
</html>
            