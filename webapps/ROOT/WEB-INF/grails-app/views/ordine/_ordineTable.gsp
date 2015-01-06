<%@page import="it.ggg.sa.ordine.Ordine"%>
<r:require module="ordine"/>

<div id="ordineApp" >
    <div id="ordineController" ng-controller="ordineController" 
        ng-init="init('<g:createLink  uri=""/>', ${ordine?.id}, ${Ordine.confezioniOrdineToJSON(ordine?.confezioniOrdine, lang)})">

        
        <table class="table table-responsive table-condensed " name="tabella">
          <thead>       
            <tr  >
               <th colspan="2"></th>
               <th style="text-align: right;"><g:message code="carrello.prezzo.label" /></th>
               <th style="text-align: center;"><g:message code="carrello.quantita.label" /></th>
               <th style="text-align: right;"><g:message code="carrello.prezzoTotale.label" /></th>
               <th></th>
            </tr>
          </thead>
          <tbody>
            <tr ng-repeat="confezioneOrdine in confezioniOrdine | orderBy:predicate" style="font-size: small;">
                <td style="vertical-align: middle;">                    
                    <img src='<g:createLink controller="prodotto" action="viewImage" id="{{confezioneOrdine.prodottoId}}" />' style="width:50px;" class="img-rounded" />                
                </td>
                
                <td style="vertical-align: middle;">
                    <h5>{{confezioneOrdine.nome}}</h5>
                    {{confezioneOrdine.descrizione}}
                </td>
                
                <td style="vertical-align: middle; text-align: right;">
                    {{confezioneOrdine.prezzo | currency:"€"}}
                </td>                
                
                <td style="vertical-align: middle; width: 120px; min-width: 100px;" >

                    <div  ng-if="confezioneOrdine.unitaMisura == 'UNITA'" class="input-group input-group-sm">                      
	                        <span class="input-group-btn">
	                            <button class="btn btn-default" type="button" ng-click="togliUno(confezioneOrdine)">
	                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
	                            </button>
	                        </span>
	                        
	                        <input class="form-control" style="text-align: right; font-size: small;" type="text"  
	                            value="{{confezioneOrdine.quantita}}"  
	                            ng-model="confezioneOrdine.quantita" 
	                            ng-blur="changeQuantita(confezioneOrdine)"
	                            only-num>
	                            
	                        <span class="input-group-btn">
	                            <button class="btn btn-default" type="button" ng-click="aggiungiUno(confezioneOrdine)">
	                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
	                            </button>
	                        </span>
                    </div>    
                    <div ng-if="confezioneOrdine.unitaMisura != 'UNITA'" class="input-group-sm">
                        <input class="form-control" style="text-align: right; font-size: small;" type="text"  
                                value="{{confezioneOrdine.quantita}}"  
                                ng-model="confezioneOrdine.quantita" 
                                ng-blur="changeQuantita(confezioneOrdine)"
                                only-decimal 
                                coma-dot-converter="coma-dot-converter" >
                    </div>
                </td>
                
                <td style="vertical-align: middle; text-align: right;"> 
                    {{confezioneOrdine.prezzo * confezioneOrdine.quantita | currency:"€"}}
                </td>
                
                <td style="vertical-align: middle;">
                    <a href="#" class="pull-right" type="button" ng-click="eliminaConfezione(confezioneOrdine)">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true" style="color: red"></span>
                    </a>
                </td>
            </tr>
            
            <%--TOTALE --%>            
            <tr  style="border-top: 1px solid gray;">
                <td colspan="2"><h4><g:message code="carrello.totale.label"/></h4></td>
                <td></td>
                <td></td>
                <td style="vertical-align: middle; text-align: right;">
                    {{totale | currency:"€"}}
                </td>
                <td></td>
            </tr>
           </tbody>
        </table>


    </div>           
</div>