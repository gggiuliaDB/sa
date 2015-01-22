<g:if test="${prodottoInstanceCount}">
    <div class="row">
        <div class="pagination" id="paginazione">
            <g:paginate total="${prodottoInstanceCount ?: 0}" params="[visualizzazione: visualizzazione, max: max, offset: offset, q: q, linea: linea, tipoProdotto: tipoProdotto]"/>
        </div>
    </div>
</g:if>