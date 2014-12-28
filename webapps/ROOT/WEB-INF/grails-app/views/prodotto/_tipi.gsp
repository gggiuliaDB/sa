<%@ page import="it.ggg.sa.prodotto.Linea"%>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto"%>
<div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm"  role="complementary">

<g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
<g:if test="${!lang}">
    <g:set var="lang" value="it"/>
</g:if>    

<ul class="nav nav-pills nav-stacked">
    <g:each in="${Linea.list()}" var="l">
        <g:if test="${linea}">
            <li class="${(l.id==linea) ?"active":""}">
        </g:if>
        <g:else>
            <li>
        </g:else>
        <g:link controller="prodotto" action="search"
            params="[linea: l.id, tipoProdotto: tipoProdotto, visualizzazione: visualizzazione]"> 
            ${l.getNome(lang.toString())}
        </g:link>
        </li>
    </g:each>
</ul>
<hr>
<ul class="nav nav-pills nav-stacked">
    <g:each in="${TipoProdotto.list()}" var="tp">
        <g:if test="${tipoProdotto}">
            <li class="${tp.id==tipoProdotto?"active":""}">
                <%--class="${tipoProdotto.id==tipoProdotto?"active":""}" --%>
        </g:if>
        <g:else>
            <li>
        </g:else>
        <g:link controller="prodotto" action="search"
            params="[linea: linea, tipoProdotto: tp.id, visualizzazione: visualizzazione]">       <%--, max: params.max, offset: params.offset --%>
            ${tp.getNome(lang.toString())}
        </g:link>
        </li>
    </g:each>
</ul>
<hr>
<ul class="nav nav-pills nav-stacked">
    <li><g:link controller="prodotto" action="search" params="[visualizzazione: visualizzazione]"><g:message code="visualizzaTutti.label"/></g:link></li>
</ul>
</div>
