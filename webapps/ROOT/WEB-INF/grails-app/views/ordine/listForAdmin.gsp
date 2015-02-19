<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="ordini.listForAdmin.label"/></title>
    </head>
    <body>
        <div class="container">
            <h2><g:message code="ordini.listForAdmin.label"/></h2>
            
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:elseif test="${flash.message }">
                <div class="alert alert-info" role="alert">
                    ${flash.message}
                </div>
            </g:elseif>
            <g:else>
                <g:render template="ordini"></g:render>
			</g:else>
        </div>
    </body>
</html>
