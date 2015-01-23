<%--MAX: ${max }<br>
offset: ${offset }<br>
q: ${q }<br>
linea: ${linea}<br>
tipoProdotto: ${tipoProdotto }<br>
--%>

<div >
	<g:link controller="prodotto" action="${action}" params="[visualizzazione: 'grid' , max: max, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></g:link> 
	<g:link controller="prodotto" action="${action}" params="[visualizzazione: 'list' , max: max, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></g:link>
    <g:link controller="prodotto" action="${action}" params="[visualizzazione: 'grid2', max: max, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"><span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></g:link>	
    
    <g:if test="${max==prodottoInstanceCount}">
        <g:link controller="prodotto" action="${action}" params="[visualizzazione: visualizzazione, max:10, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"><g:message code="visualizza.10perpagina.label"/></g:link>
    </g:if>
    <g:else>
        <g:link controller="prodotto" action="${action}" params="[visualizzazione: visualizzazione, max:-1, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"><g:message code="visualizza.tutti.label" args="[prodottoInstanceCount]"/></g:link>
    </g:else> 
</div>
<br>

<g:render template="paginazione"/>

<g:if test="${!prodottoInstanceList }">
    <div class="alert alert-warning" role="alert"><g:message code="nessun.prodotto.trovato"/></div>                        
</g:if>

<g:if test="${visualizzazione=='grid2'}">
    <g:render template="vetrinaGrid2"></g:render>
</g:if>
<g:elseif test="${visualizzazione=='grid'}" >
    <g:render template="vetrinaGrid3"></g:render>
</g:elseif>                        
<g:else>
    <g:render template="vetrinaList"></g:render>
</g:else>

<g:render template="paginazione"/>
