<div class="row">

    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />

        <div class="col-sm-4  ">
            <div class="thumbnail">
                <g:render template="/prodotto/image" model="[id: prodottoInstance.id]"/>
                <div class="caption">
                    <h5>
                        <%--Sconto--%>
                        <g:set var="sconto" value="${prodottoInstance.maxSconto()}" />
                        <g:if test="${sconto!=0}">
                            <div class="pull-right"><span class="label label-info">-${sconto*100}%</span></div>
                        </g:if>
                        <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione?.nome.toLowerCase()?.capitalize()}</g:link>
                    </h5>
                    <g:if test="${internazionalizzazione.note}" > 
                        <p class="small">${internazionalizzazione.note?.toLowerCase()?.capitalize()}</p>
                    </g:if>
                    <%--<span class="label label-info pull-right">-30%</span>--%>
                </div>
                <g:mediaRatings id="${prodottoInstance.id}"/>                
            </div>
        </div>
    </g:each>
    
    <%--<button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?">Click to toggle popover</button>--%>
    
    
    
</div>