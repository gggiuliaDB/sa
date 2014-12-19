<jq:jquery>
$('.carousel').carousel({
  interval: 50000
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
                        <img class="center-block" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" />
                        <div class="carousel-caption">
                            <h3>
                                <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</g:link>
                            </h3>
                            <div>${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</div>
                        </div>              
                        <%--<img class="slide-image img-responsive center-block" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" />
                        <div class="carousel-caption">
                            <h3>
                                <g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</g:link>
                            </h3>
                            <div>${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</div>
                        </div>
                        --%>
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
