<g:link controller="carrello" action="show" id="${carrello.id}">
    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true">
        <span class="badge badge-red" id="carrelloSize">${carrello?.contaConfezioni()}</span>
    </span>
</g:link>