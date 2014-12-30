<div class="row">

    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />

        <div class="col-sm-4 col-lg-4 col-md-4">
            <div class="thumbnail">
                <g:render template="/prodotto/image" model="[id: prodottoInstance.id]"/>
                <div class="caption">
                    <h5>
                        <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione?.nome.toLowerCase()?.capitalize()}</g:link>
                    </h5>
                    <g:if test="${internazionalizzazione.note}" > 
                        <p class="small">${internazionalizzazione.note?.toLowerCase()?.capitalize()}</p>
                    </g:if>
                </div>
                <g:mediaRatings id="${prodottoInstance.id}"/>                
            </div>
        </div>
    </g:each>
</div>