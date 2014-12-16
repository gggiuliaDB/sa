<%@ page import="it.ggg.sa.prodotto.Linea"%>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto"%>
<div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm"  role="complementary">

<ul class="nav nav-pills nav-stacked">
    <g:each in="${Linea.list()}" var="l">
        <g:if test="${linea}">
            <li class="${(l.id==linea) ?"active":""}">
        </g:if>
        <g:else>
            <li>
        </g:else>
        <g:link controller="prodotto" action="search"
            params="[linea: l.id, tipoProdotto: tipoProdotto, max: params.max, offset: params.offset]">
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
            params="[linea: linea, tipoProdotto: tp.id, max: params.max, offset: params.offset]">
            ${tp.getNome(lang.toString())}
        </g:link>
        </li>
    </g:each>
</ul>
<hr>
<ul class="nav nav-pills nav-stacked">
    <li><g:link controller="prodotto" action="search"><g:message code="visualizzaTutti.label"/></g:link></li>
</ul>
</div>

<!--
    <ul class="nav nav-sidebar">
            <li>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    More
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ul>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">About US</a></li>
                                    <li><a href="#">Jobs</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </li>
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
        </ul>
    

<hr>
<ul class="nav nav-sidebar">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">More<b class="caret"></b></a>
        <ul class="dropdown-menu">
        <li><a href="#">Blog</a></li>
        <li><a href="#">About US</a></li>
        <li><a href="#">Jobs</a></li>
        </ul>
    </li>
    <li><a href="">Nav item again</a></li>
    <li><a href="">One more nav</a></li>
    <li><a href="">Another nav item</a></li>
</ul>
-->
