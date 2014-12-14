<%@ page import="it.ggg.sa.prodotto.Linea"%>
<%@ page import="it.ggg.sa.prodotto.TipoProdotto"%>

<%--linea: ${linea }<br>--%>
<%--tipoProdotto: ${tipoProdotto }<br>--%>

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
    <li><g:link controller="prodotto" action="search">Visualizza tutti</g:link>
    </li>
</ul><%--



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






--%><%--
<hr>

<div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm"  role="complementary">
    <ul class="nav bs-docs-sidenav">

        <li><a href="#js-overview">Overview</a>
            <ul class="nav">
                <li><a href="#js-individual-compiled">Individual or
                        compiled</a></li>
                <li><a href="#js-data-attrs">Data attributes</a></li>
                <li><a href="#js-programmatic-api">Programmatic API</a></li>
                <li><a href="#js-noconflict">No conflict</a></li>
                <li><a href="#js-events">Events</a></li>
                <li><a href="#js-disabled">When JavaScript is disabled</a></li>
                <li><a href="#callout-third-party-libs">Third-party
                        libraries</a></li>
            </ul></li>
        <li><a href="#transitions">Transitions</a></li>
        <li><a href="#modals">Modal</a>
            <ul class="nav">
                <li><a href="#modals-examples">Examples</a></li>
                <li><a href="#modals-sizes">Sizes</a></li>
                <li><a href="#modals-remove-animation">Remove animation</a></li>
                <li><a href="#modals-usage">Usage</a></li>
            </ul></li>
        <li><a href="#dropdowns">Dropdown</a>
            <ul class="nav">
                <li><a href="#dropdowns-examples">Examples</a></li>
                <li><a href="#dropdowns-usage">Usage</a></li>
            </ul></li>
        <li><a href="#scrollspy">Scrollspy</a>
            <ul class="nav">
                <li><a href="#scrollspy-examples">Examples</a></li>
                <li><a href="#scrollspy-usage">Usage</a></li>
            </ul></li>
        <li><a href="#tabs">Tab</a>
            <ul class="nav">
                <li><a href="#tabs-examples">Examples</a></li>
                <li><a href="#tabs-usage">Usage</a></li>
            </ul></li>
        <li><a href="#tooltips">Tooltip</a>
            <ul class="nav">
                <li><a href="#tooltips-examples">Examples</a></li>
                <li><a href="#tooltips-usage">Usage</a></li>
            </ul></li>
        <li><a href="#popovers">Popover</a>
            <ul class="nav">
                <li><a href="#popovers-examples">Examples</a></li>
                <li><a href="#popovers-usage">Usage</a></li>
            </ul></li>
        <li><a href="#alerts">Alert</a>
            <ul class="nav">
                <li><a href="#alerts-examples">Examples</a></li>
                <li><a href="#alerts-usage">Usage</a></li>
            </ul></li>
        <li><a href="#buttons">Button</a>
            <ul class="nav">
                <li><a href="#buttons-examples">Examples</a></li>
                <li><a href="#buttons-usage">Usage</a></li>
            </ul></li>
        <li><a href="#collapse">Collapse</a>
            <ul class="nav">
                <li><a href="#collapse-examples">Examples</a></li>
                <li><a href="#collapse-usage">Usage</a></li>
            </ul></li>
        <li><a href="#carousel">Carousel</a>
            <ul class="nav">
                <li><a href="#carousel-examples">Examples</a></li>
                <li><a href="#carousel-usage">Usage</a></li>
            </ul></li>
        <li><a href="#affix">Affix</a>
            <ul class="nav">
                <li><a href="#affix-examples">Examples</a></li>
                <li><a href="#affix-usage">Usage</a></li>
            </ul></li>


    </ul>
    <a class="back-to-top" href="#top"> Back to top </a> <a href="#"
        class="bs-docs-theme-toggle"> Preview theme </a>

</div>

--%>