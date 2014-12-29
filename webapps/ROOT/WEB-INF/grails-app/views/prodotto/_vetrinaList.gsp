<div class="list-group">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
        <g:link class="list-group-item list-group-item-active"  action="detail" id="${prodottoInstance.id}" style="text-decoration: none;">
            <div class="row">
                <div class="col-sm-2">
                    <img  src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:100px;" class="img-rounded"/>
                </div>
                <div class="col-sm-8">
	                <h4>
                        ${internazionalizzazione?.nome.toLowerCase()?.capitalize()}
	                </h4>
	                <div style="color: white;">${internazionalizzazione?.note.toLowerCase()?.capitalize()}</div>
                </div>
                
                <div class="col-sm-2">
	                <g:mediaRatings id="${prodottoInstance.id}"/>
                </div>
            </div>
        </g:link>        
    </g:each>
</div>
<div class="row">
    <div class="pagination " id="paginazione">
        <g:paginate total="${prodottoInstanceCount ?: 0}" />
    </div>
</div>
