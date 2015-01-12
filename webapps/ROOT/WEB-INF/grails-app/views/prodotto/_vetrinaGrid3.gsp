<div class="row">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />

        <div class="col-sm-4 col-lg-4 col-md-4">           
            <div class="thumbnail">
                <g:render template="/prodotto/image" model="[id: prodottoInstance.id]"/>
                <div class="caption-vetrina">
                    <h5>
                        <%--Sconto--%>
                        <g:set var="sconto" value="${prodottoInstance.maxSconto()}" />
                        <g:if test="${sconto!=0}">
                            <div class="pull-right"><span class="label label-info">-${sconto*100}%</span></div>
                        </g:if>
                        <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione?.nome?.toLowerCase()?.capitalize()}</g:link>
                    </h5>
                </div>

                <g:mediaRatings id="${prodottoInstance.id}"/>                
            </div>
        </div>
    </g:each>
</div>
<%--<g:if test="${prodottoInstanceCount}">--%>
<%--    <div class="row">--%>
<%--        <div class="pagination " id="paginazione">--%>
<%--            <g:paginate total="${prodottoInstanceCount ?: 0}" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</g:if>--%>