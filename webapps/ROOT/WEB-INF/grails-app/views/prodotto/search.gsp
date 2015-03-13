<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-60730161-1', 'auto');
  ga('send', 'pageview');
</script>
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
              <li class="active">${ricerca}</li>
            </ul>
            
            <div class="row">
                <div class="col-md-3">
                    <g:render template="tipi" ></g:render>
                </div>
                <div class="col-md-9" > 
                    <g:render template="tipoVisualizzazione" model="[action: 'search', q: q, max: max, offset:offset]"/>                   
                </div>
            </div>
        </div>
    </body>
</html>
