<g:link controller="carrello" action="show" id="${carrello.id}">
    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true">
        <%--<g:if test="${carrello.confezioniCarrello.size() > 0}">--%>
            <span class="badge badge-red" id="carrelloSize">${carrello.confezioniCarrello.size()}</span>
        <%--</g:if>--%>
    </span>
</g:link>