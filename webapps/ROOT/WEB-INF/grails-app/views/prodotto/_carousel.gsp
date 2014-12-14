<div class="row carousel-holder">
    

    <div class="col-md-12" >
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
            <ol class="carousel-indicators">
                <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                    <g:if test="${i==0}">
                        <li data-target="#carousel-example-generic" data-slide-to="${prodottoInstance.id}" class="active"></li>
                    </g:if>
                    <g:else>
                        <li data-target="#carousel-example-generic" data-slide-to="${prodottoInstance.id}" ></li>
                    </g:else>
                </g:each>
            </ol>
            <div class="carousel-inner">
                <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                    <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
                    <div class="item ${i==0 ? 'active' : ''}">
                           <img class="slide-image" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" />
                           <div class="carousel-caption">
                            <h3><g:link action="detail" id="${prodottoInstance.id}">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</g:link></h3>
                            <p class="truncate-carousel">${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</p>
                        </div>
                    </div>
                </g:each>
            </div>
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>

</div>
