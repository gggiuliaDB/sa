
<div class="row">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />

        <div class="col-sm-6 col-lg-6 col-md-6">           
          <g:link  action="detail" id="${prodottoInstance.id}" style="text-decoration: none;">   
            <div class="thumbnail thumbnail2">
                <img  src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  class="img-rounded"/>
                
                <div class="testo-vetrina" >
	                <div class="caption-vetrina">
	                    <h5>
	                        <g:set var="sconto" value="${prodottoInstance.maxSconto()}" />
	                        <g:if test="${sconto!=0}">
	                            <div class="pull-right"><span class="label label-info">-${sconto*100}%</span></div>
	                        </g:if>
	                        ${internazionalizzazione?.nome?.toLowerCase()?.capitalize()}
	                    </h5>
	                    <p style="color: white;">${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</p>
	                </div>
                <g:mediaRatings id="${prodottoInstance.id}"/>
                </div>                
            </div>
          </g:link>
        </div>
    </g:each>
</div>
<%----%>
<%--<g:if test="${prodottoInstanceCount}">--%>
<%--    <div class="row">--%>
<%--        <div class="pagination" id="paginazione">--%>
<%--            <g:paginate total="${prodottoInstanceCount ?: 0}" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</g:if>--%>