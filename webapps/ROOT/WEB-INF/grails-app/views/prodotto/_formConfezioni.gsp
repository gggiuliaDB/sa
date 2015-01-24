<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'confezioni', 'error')} ">
  <div class="col-sm-3">
      <label for="confezioni"> 
         <g:message code="prodotto.confezioni.label" default="Confezioni" />
      </label>
  </div>
  <div class="col-sm-12">
    <table class="table table-condensed table-bordered table-responsive">
        <thead>
            <th>Nome</th>
            <th>Peso</th>
            <th>Tipo prezzo</th>
            <th>Prezzo</th>
            <th>Sconto</th>
            <th ng-if="nuovo==false"></th>
        </thead>
        <tr ng-repeat="confezione in prodotto.confezioni">
                
            <td>
                <div ng-hide="confezione.editing">{{confezione.nome}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                    <input  type="text"
                        value="{{confezione.nome}}"  
                        ng-model="confezione.nome">                              
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">{{confezione.peso}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                    <g:field only-decimal class="form-control input-sm"
                        coma-dot-converter="coma-dot-converter"  
                        type="text" name="peso"
                        ng-model="confezione.peso"/>                             
                </div>
            </td>
            
            <td>
                <div ng-hide="confezione.editing">{{confezione.unitaMisura.label}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
		            <select class="form-control input-sm" id="linea" name="linea.id" 
				        ng-model="confezione.unitaMisura"
				        ng-options="unitaMisura as unitaMisura.label for unitaMisura in tipiUnitaMisura" ></select>
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">{{confezione.prezzo}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                    <g:field only-decimal class="form-control input-sm"
                        coma-dot-converter="coma-dot-converter"  
                        type="text" name="prezzo"
                        ng-model="confezione.prezzo"/>                             
                </div>
            </td>
            <td>
                <div ng-hide="confezione.editing">{{confezione.sconto}}</div>
                <div ng-show="confezione.editing" class="input-group input-group-sm">
                    <g:field only-decimal class="form-control input-sm"
                        coma-dot-converter="coma-dot-converter"
                        type="text" name="sconto"
                        ng-model="confezione.sconto"/>                             
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
