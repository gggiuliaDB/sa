<%@page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto"%>
<%@page import="it.ggg.sa.localization.LocaleTagLib"%>

<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'internazionalizzazioni', 'error')} ">
  <div class="col-sm-3">
    <label for="internazionalizzazioni"> 
       <g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" />
    </label>
  </div>
  <div class="col-sm-12">
    <table class="table table-condensed table-bordered table-responsive">
        <thead>
            <th>Lingua</th>
            <th>Nome</th>
            <th>Descrizione</th>
            <th>Ingredienti</th>
            <th>Come gustarlo</th>
            <th>Conservazione</th>
            <th ng-if="nuovo==false"></th>
	    </thead>
        <tr ng-repeat="i18 in prodotto.internazionalizzazioni">
	            
            <td>{{i18.locale}}</td>
            <td>
                <div ng-hide="i18.editing">{{i18.nome}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <input  type="text"
                        value="{{i18.nome}}"  
                        ng-model="i18.nome">                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.note}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        ng-model="i18.note">{{i18.note}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.ingredienti}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        ng-model="i18.ingredienti">{{i18.ingredienti}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.comeGustarlo}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        ng-model="i18.comeGustarlo">{{i18.comeGustarlo}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.conservazione}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        ng-model="i18.conservazione">{{i18.conservazione}}</textarea>                              
                </div>
            </td>
            <td ng-if="nuovo==false">
                <div ng-hide="i18.editing">
                    <a href="#" ng-click="editI18(i18)">Modifica</a>
                </div>
                <div ng-show="i18.editing">
                    <a href="#" ng-click="updateI18()">Salva</a> |
                    <a href="#" ng-click="cancelI18()">Annulla</a>
                </div>                
            </td>
        </tr>
     </table>
  </div>     
</div>
