<div class="ratings">
    <p class="pull-right">${!commenti ? 0 : commenti.size()} <g:message code="commento.commenti.label" /></p>
    <p>
        <g:render template="/commento/stars" model="[value: mediaRatings]"></g:render>
        <%--${mediaRatings} <g:message code="commento.stelle.label" />--%>
    </p>
</div>