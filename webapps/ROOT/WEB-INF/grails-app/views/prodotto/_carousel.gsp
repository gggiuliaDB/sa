<jq:jquery>
$('.carousel').carousel({
  interval: 5000
})
</jq:jquery>

<div class="row carousel-holder">
    <div class="col-md-12" >
        <div id="carousel-prodotti" class="carousel slide" data-ride="carousel" >
            <ol class="carousel-indicators">
                <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                    <g:if test="${i==0}">
                        <li data-target="#carousel-prodotti" data-slide-to="${prodottoInstance.id}" class="active"></li>
                    </g:if>
                    <g:else>
                        <li data-target="#carousel-prodotti" data-slide-to="${prodottoInstance.id}" ></li>
                    </g:else>
                </g:each>
            </ol>
            <div class="carousel-inner">
            
                <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                    <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
                    <div class="item ${i==0 ? 'active' : ''}">
            
                        <div class="row">
                            <div class="col-sm-6">
                                <img class="carousel-img" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" />
		                    </div>
		                    
		                    <div class="col-sm-4">
                                <div >
                                    <h3>
                                        <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</g:link>
                                    </h3>
                                    <div class="carousel-testo">
                                        ${internazionalizzazione?.note?.toLowerCase()?.capitalize()}
                                    </div>
                                </div>
                            </div>
                        </div>                             
                        
                    </div>
                </g:each>
            </div>
            <a class="left carousel-control" href="#carousel-prodotti" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-prodotti" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
             
    </div>
</div>
