<%@ page import="it.ggg.sa.prodotto.Linea" %>
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

    </head>
    <body>
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>    

        <div class="container">

            <div class="row">

                <div class="col-md-3">
                    <g:img file="saLogo.jpg" class="img-rounded"/>
                    <g:render template="tipi"></g:render>
                    <hr>
                    <locale:selector />
                </div>
                <div class="col-md-9">
                    <g:render template="carousel"></g:render>
                    <g:render template="topProducts" model="[prodottoInstanceList: topProducts]"></g:render>
                </div>
            </div>
        </div>

    </body>
</html>
