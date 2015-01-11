                <div role="tabpanel">
    
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#prodotto" aria-controls="prodotto" role="tab" data-toggle="tab">Prodotto</a></li>
                        <li role="presentation"><a href="#immagine" aria-controls="immagine" role="tab" data-toggle="tab"><g:message code="prodotto.immagine.label" default="Immagine" /></a></li>
                        <li role="presentation"><a href="#confezioni" aria-controls="confezioni" role="tab" data-toggle="tab"><g:message code="prodotto.confezioni.label" default="Confezioni" /></a></li>
                        <li role="presentation"><a href="#lingue" aria-controls="lingue" role="tab" data-toggle="tab"><g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" /></a></li>
                      </ul>
                    
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="prodotto">
                            <g:render template="formProdotto"/>                     
                        </div>
                        <div role="tabpanel" class="tab-pane" id="immagine">
                            <g:render template="formImmagine"/>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="confezioni">
                            <g:render template="formConfezioni"/>                            
                        </div>
                        <div role="tabpanel" class="tab-pane" id="lingue">
                            <g:render template="formIntern"/>                            
                        </div>
                      </div>
                    </div>