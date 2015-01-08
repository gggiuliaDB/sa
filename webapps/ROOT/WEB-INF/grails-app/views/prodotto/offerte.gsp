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
                    <div >
                        <g:link controller="prodotto" action="offerte" params="[visualizzazione: 'grid']"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></g:link> 
                        <g:link controller="prodotto" action="offerte" params="[visualizzazione: 'list']"><span class="glyphicon glyphicon-th-list " aria-hidden="true"></span></g:link>
                    </div>
                    <br>
                    
                    <g:if test="${!prodottoInstanceList }">
                        <div class="alert alert-warning" role="alert"><g:message code="nessun.prodotto.trovato"/></div>                        
                    </g:if>
                    
                    <g:if test="${visualizzazione=='list'}">
                        <g:render template="vetrinaList"></g:render>
                    </g:if>
                    <g:else >
                        <g:render template="vetrinaGrid"></g:render>
                    </g:else>
                        
                </div>
            </div>
        </div>

    </body>
</html>
