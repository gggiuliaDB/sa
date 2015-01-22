<sec:access expression="hasRole('ROLE_USER')">
	<g:link controller="carrello" action="show" id="${carrello.id}">
	    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span><br/>
        <g:message code="carrello.title" default="Carrello"/> 
        <span class="badge badge-red" id="carrelloSize">${carrello?.contaConfezioni()}</span>
	    
	</g:link>
</sec:access>