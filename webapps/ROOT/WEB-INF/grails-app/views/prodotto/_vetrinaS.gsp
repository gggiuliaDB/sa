<table class="table table-hover table-condensed">
    <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
        <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
        <tr>
            <td>
                <g:link action="detail" id="${prodottoInstance.id}" >
                    <img  src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:50px;" class="img-rounded"/>
                </g:link>                 
            </td>
            <td>
                <h4><g:link action="detail" id="${prodottoInstance.id}" style="text-decoration: none;">
                        ${internazionalizzazione?.nome.toLowerCase()?.capitalize()}
                    </g:link>
                </h4>
            </td>
            <td>
                <div class="ratings">
                    <p class="pull-right">15 reviews</p>
                    <p>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                    </p>
                </div>
            </td>
        
        </tr>        
    </g:each>
</table>
<div class="row">
    <div class="pagination " id="paginazione">
        <g:paginate total="${prodottoInstanceCount ?: 0}" />
    </div>
</div>
