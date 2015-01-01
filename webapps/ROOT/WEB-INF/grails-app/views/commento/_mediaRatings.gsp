<div class="ratings">
    <p class="pull-right">
        <g:if test="${numeroCommenti==1}">
            ${numeroCommenti} <g:message code="commento.commento.label" />
        </g:if>
        <g:else>
            ${numeroCommenti} <g:message code="commento.commenti.label" />
            <%--<a href="#" tabindex="0" class="" role="button" data-toggle="popover" data-trigger="focus" title="Commenti" data-content="Bla bla bla">
                ${numeroCommenti} <g:message code="commento.commenti.label" />
            </a>--%>
            
        </g:else>
    </p>
    <p>
        <g:render template="/commento/stars" model="[value: mediaRatings]"></g:render>
        <%--${mediaRatings} <g:message code="commento.stelle.label" />--%>
    </p>
</div>


