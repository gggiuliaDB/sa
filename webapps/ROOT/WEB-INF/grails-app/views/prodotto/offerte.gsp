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
        
        <div class="container" >        
        
            <ul class="breadcrumb">
              <li><g:link controller="prodotto" >Home</g:link></li>
              <li><g:link controller="prodotto" action="search" ><g:message code="visualizzaTutti.label"/></g:link></li>
              <li class="active"><g:message code="visualizzaOfferte.label"/></li>
            </ul>        
        
            <div class="row">
                <div class="col-md-3">
                    <g:render template="tipi" ></g:render>
                </div>
                <div class="col-md-9" >
                    <g:render template="tipoVisualizzazione" model="[action: 'offerte']"/>
                </div>
            </div>
        </div>
    </body>
</html>
