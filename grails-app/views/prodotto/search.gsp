
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body >
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>

        <div class="container" > <%--style="background-color: #76AF8C;" --%>
            <div class="row">
                <div class="col-md-3">
                    <g:img file="saLogo.jpg"/>
                    <g:render template="tipi" ></g:render>
                </div>
                <div class="col-md-9" > <%-- style="background-color: #023261;" --%>
                    <g:render template="vetrina"></g:render>
                </div>
            </div>
        </div>

    </body>
</html>
