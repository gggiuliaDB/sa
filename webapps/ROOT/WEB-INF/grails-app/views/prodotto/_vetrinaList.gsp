<div class="list-group">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
        <g:link class="list-group-item list-group-item-active"  action="detail" id="${prodottoInstance.id}" style="text-decoration: none;">
            <div class="row">            
                <div class="col-sm-3">
                    <%--Immagine--%>
                    <img  src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:100%;" class="img-rounded"/>
                </div>
                <div class="col-sm-9">
	                <h4>
                        <%--Sconto--%>
                        <g:set var="sconto" value="${prodottoInstance.maxSconto()}" />
                        <g:if test="${sconto!=0}">
                            <div class="pull-right"><span class="label label-info">-${sconto*100}%</span></div>
                        </g:if>
                        
                        <%--Nome prodotto--%>
                        ${internazionalizzazione?.nome?.toLowerCase()?.capitalize()}
	                </h4>
	                <div style="color: white;">${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</div>
	                
	                
	                <%--Rating e commenti--%>
	                <g:mediaRatings id="${prodottoInstance.id}"/>
                </div>
                
            </div>
        </g:link>        
    </g:each>
</div>
<%--<div class="row">--%>
<%--    <div class="pagination " id="paginazione">--%>
<%--        <g:paginate total="${prodottoInstanceCount ?: 0}" />--%>
<%--    </div>--%>
<%--</div>--%>
