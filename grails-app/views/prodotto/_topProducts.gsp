        <div class="row">
            <g:each in="${topProductsList}" status="i" var="prodottoInstance">    
                <div class="col-sm-4 col-lg-4 col-md-4">
                    <div class="thumbnail">
                        <g:render template="/prodotto/image" model="[id: prodottoInstance.id]"/>
                        <div class="caption">
                            <%--<h4 class="pull-right">&euro;${prodottoInstance.prezzo}</h4>--%>
                            <h5>
                                <%--<a href="#">${prodottoInstance.nome}</a>--%>
                                <g:link action="show" id="${prodottoInstance.id}">${prodottoInstance.nome.toLowerCase().capitalize()}</g:link>
                            </h5>
                            <p>${prodottoInstance.descrizione}.</p>
                        </div>
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
                    </div>
                </div>
            </g:each>
        </div>
        