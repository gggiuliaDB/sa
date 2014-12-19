<%@ page import="it.ggg.sa.prodotto.Linea" %>
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        
<%--        <link rel="stylesheet" href="${resource(dir: 'css', file: 'dist/css/slider-pro.min.css')}" type="text/css">--%>
    </head>
    <body>
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>    

        <div class="container">
            
            <div class="row">

                <div class="col-md-2">
                    <g:img file="saLogo.jpg" class="img-rounded" style="width: 100%; max-width:400px;"/>
                    <g:render template="tipi"></g:render>
                    <hr>
                    <locale:selector />
                </div>
                <div class="col-md-10">
                    <g:if test="${flash.message}">
                        <div class="alert alert-success" role="status">${flash.message}</div>
                    </g:if>
                    
<%--                    <g:render template="ccc"></g:render>--%>
<%--                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>--%>
<%--                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>--%>
                    <g:render template="carousel"></g:render>
                    <g:render template="topProducts" model="[prodottoInstanceList: topProducts]"></g:render>
                </div>
            </div>
        </div>
<%--		<script src="libs/js/jquery-1.11.0.min.js"></script>--%>
<%--		<script src="dist/js/jquery.sliderPro.min.js"></script>--%>
<%--		<jq:jquery>--%>
<%--		jQuery( document ).ready(function( $ ) {--%>
<%--		    $( '#my-slider' ).sliderPro();--%>
<%--		});--%>
<%--		</jq:jquery>--%>
    </body>
</html>
