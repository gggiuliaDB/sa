<div >
	<g:link controller="prodotto" action="${action}" params="[visualizzazione: 'grid']"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></g:link> 
	<g:link controller="prodotto" action="${action}" params="[visualizzazione: 'list']"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></g:link>
    <g:link controller="prodotto" action="${action}" params="[visualizzazione: 'grid2']"><span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></g:link>	
    
    <%--<input type="text" value="10" class="form-control input-sm" style="display:inline; width: 100px; text-align: right;"/>--%>
    <g:if test="${max==100}">
        <g:link controller="prodotto" action="${action}" params="[visualizzazione: visualizzazione, max:10]"><g:message code="visualizza.10perpagina.label"/></g:link>
    </g:if>
    <g:else>
        <g:link controller="prodotto" action="${action}" params="[visualizzazione: visualizzazione, max:100]"><g:message code="visualizza.tutti.label"/></g:link>
    </g:else> 
</div>
<br>

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