<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'confezioni', 'error')} ">
  <div class="col-sm-3">
      <label for="confezioni"> 
         <g:message code="prodotto.confezioni.label" default="Confezioni" />
      </label>
  </div>
  <div class="col-sm-12">
    <a id="${prodottoInstance?.id}" class="addConfezione" href="#">         
        Aggiungi confezione        
    </a>
    
    <table class="table table-condensed table-bordered table-responsive">
        <thead>
            <th style="width: 20%">Nome</th>
            <th style="width: 15%">Peso</th>
            <th style="width: 20%">Tipo prezzo</th>
            <th style="width: 15%">Prezzo</th>
            <th style="width: 15%">Sconto</th>
            <th style="width: 10%" ng-if="nuovo==false"></th>
            <th style="width: 10%"></th>
            
        </thead>
        <tr ng-repeat="confezione in prodotto.confezioni">
            <input type="hidden"  name="confezioni.id" value="{{confezione.id}}"/>    
            <td>
                <div ng-hide="confezione.editing">{{confezione.nome}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        name="confezioni.nome"
                        ng-model="confezione.nome"
                        style="border-radius: 3px;">{{confezione.nome}}</textarea>
                    <%--<locale:translator name="confezione_{{confezione.id}}" id="{{confezione.id}}"/>--%>
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">
                    {{confezione.peso}}
                    <div style="display: inline;">Kg</div>
                </div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                  <input class="form-control" style="text-align: right; font-size: small;" type="text"
                        aria-describedby="basic-addon-perc"  
                        name="confezioni.peso"
                        value="{{confezione.peso}}"  
                        ng-model="confezione.peso" 
                        only-decimal 
                        coma-dot-converter="coma-dot-converter" >
                  <span class="input-group-addon" id="basic-addon-perc">Kg</span>                                    
                </div>

            </td>
            
            <td>
                <div ng-hide="confezione.editing">{{confezione.unitaMisura.label}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
		            <select class="form-control input-sm" id="unitaMisura" 
		                name="confezioni.unitaMisura" 
				        ng-model="confezione.unitaMisura"
				        ng-options="unitaMisura.label for unitaMisura in tipiUnitaMisura track by unitaMisura.value" 
				        style="border-radius: 3px;"></select>
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">{{confezione.prezzo | currency:"€"}} {{confezione.unitaMisura.label1}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                  <input class="form-control" style="text-align: right; font-size: small;" type="text"
                        aria-describedby="basic-addon-euro"  
                        name="confezioni.prezzo"
                        value="{{confezione.prezzo}}"  
                        ng-model="confezione.prezzo"
                        only-decimal 
                        coma-dot-converter="coma-dot-converter" >
                  <span class="input-group-addon" id="basic-addon-euro">&euro;</span>                              
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">{{confezione.sconto}}<div style="display: inline;" ng-show="confezione.sconto">%</div></div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                  <input class="form-control" style="text-align: right; font-size: small;" type="text"
                        aria-describedby="basic-addon-perc"  
                        name="confezioni.sconto"
                        value="{{confezione.sconto}}"  
                        ng-model="confezione.sconto" 
                        only-decimal 
                        coma-dot-converter="coma-dot-converter" >
                  <span class="input-group-addon" id="basic-addon-perc">%</span>                                    
                </div>
            </td>
            
            <td ng-if="nuovo==false">
                <div ng-hide="confezione.editing">
                    <a href="#" ng-click="editConfezione(confezione)">Modifica</a>
                </div>
                <div ng-show="confezione.editing">
                    <a href="#" ng-click="updateConfezione()">Salva</a> |
                    <a href="#" ng-click="cancelConfezione()">Annulla</a>
                </div>                
            </td>
            <td>        
                <a href="#" ng-click="eliminaConfezione(confezione)">Elimina</a>
            </td>
        </tr>
     </table>    
    
    
    
    
    
    <%--
    <ul class="one-to-many">
            <g:each in="${prodottoInstance?.confezioni?}" var="c">
                <li><g:link controller="confezione" action="show" id="${c.id}">
                        ${c?.encodeAsHTML()}
                    </g:link>
                </li>
            </g:each>
            <li class="add">
                <g:link controller="confezione" action="create" params="['prodotto.id': prodottoInstance?.id]">
                    ${message(code: 'default.add.label', args: [message(code: 'confezione.label', default: 'Confezione')])}
                </g:link>
            </li>
    </ul> --%>
  </div>
</div>
