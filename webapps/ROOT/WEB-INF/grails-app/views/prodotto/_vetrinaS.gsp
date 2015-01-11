<table class="table table-hover table-condensed">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
        <tr>
            <td style="vertical-align: middle;">
                <g:link action="detail" id="${prodottoInstance.id}" >
                    <img  src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:50px;" class="img-rounded"/>
                </g:link>                 
            </td>
            <td style="vertical-align: middle;">
                <h4><g:link action="detail" id="${prodottoInstance.id}" style="text-decoration: none;">
                        ${internazionalizzazione?.nome?.toLowerCase()?.capitalize()}
                    </g:link>
                </h4>
            </td>
            <td style="vertical-align: middle;">
                <g:mediaRatings id="${prodottoInstance.id}"/>
            </td>
        
        </tr>        
    </g:each>
</table>
<div class="row">
    <div class="pagination " id="paginazione">
        <g:paginate total="${prodottoInstanceCount ?: 0}" />
    </div>
</div>
