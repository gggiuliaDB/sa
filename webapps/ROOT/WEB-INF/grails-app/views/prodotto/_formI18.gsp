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
            <th style="width: 5%">Lingua</th>
            <th style="width: 10%">Nome</th>
            <th style="width: 20%">Descrizione</th>
            <th style="width: 20%">Ingredienti</th>
            <th style="width: 20%">Come gustarlo</th>
            <th style="width: 20%">Conservazione</th>
            <th style="width: 5%" ng-if="nuovo==false"></th>
	    </thead>
        <tr ng-repeat="i18 in prodotto.internazionalizzazioni">
            <g:hiddenField name="internazionalizzazioni[{{$index}}].id" value="{{i18.id}}"/>    
	            
            <td>
                {{i18.locale}}
                <g:hiddenField name="i18[{{$index}}].locale" value="{{i18.locale}}"/>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.nome}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <input  type="text"
                        name="internazionalizzazioni[{{$index}}].nome"
                        value="{{i18.nome}}"  
                        ng-model="i18.nome"
                        style="border-radius: 3px;">                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.note}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        name="internazionalizzazioni[{{$index}}].note"
                        ng-model="i18.note"
                        style="border-radius: 3px;">{{i18.note}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.ingredienti}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        name="internazionalizzazioni[{{$index}}].ingredienti"
                        ng-model="i18.ingredienti"
                        style="border-radius: 3px;">{{i18.ingredienti}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.comeGustarlo}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        name="internazionalizzazioni[{{$index}}].comeGustarlo"
                        ng-model="i18.comeGustarlo"
                        style="border-radius: 3px;">{{i18.comeGustarlo}}</textarea>                              
                </div>
            </td>
            <td>
                <div ng-hide="i18.editing">{{i18.conservazione}}</div>
                <div ng-show="i18.editing" class="input-group input-group-sm">
                    <textarea ng-maxlength="1024" rows="3"
                        name="internazionalizzazioni[{{$index}}].conservazione"
                        ng-model="i18.conservazione"
                        style="border-radius: 3px;">{{i18.conservazione}}</textarea>                              
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
     <a id="${prodottoInstance?.id}" class="addI18" href="#">
         Aggiungi lingua        
     </a>
    
  </div>     
</div>
