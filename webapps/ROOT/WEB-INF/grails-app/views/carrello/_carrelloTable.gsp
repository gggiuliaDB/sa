<%@page import="grails.converters.JSON"%>

<r:require module="carrello"/>
<div id="carrelloApp" >
    <div id="carrelloController" 
        ng-controller="carrelloController" 
        ng-init="init('<g:createLink  uri=""/>', '${controller}', ${carrelloInstance?.id}, ${confezioniCarrello})">
        
   
        <table class="table table-responsive table-condensed " name="tabella">
          <thead>        
            <tr  >
               <th colspan="2"></th>
               <th style="text-align: right;"><g:message code="carrello.prezzo.label" /></th>
               <th style="text-align: right;"><g:message code="carrello.quantita.label" /></th>
               <th style="text-align: right;"><g:message code="carrello.prezzoTotale.label" /></th>
               <th></th>
            </tr>
          </thead>
          <tbody>
            <tr ng-repeat="confezioneCarrello in confezioniCarrello | orderBy:predicate" style="font-size: small;">
                <td style="vertical-align: middle;">                    
                    <img src='<g:createLink controller="prodotto" action="viewImage" id="{{confezioneCarrello.prodottoId}}" />' style="width:50px;" class="img-rounded" />                
                </td>
                
                <td style="vertical-align: middle;">
                    <h5>{{confezioneCarrello.nome}}</h5>
                    {{confezioneCarrello.descrizione}}
                </td>
                
                <td style="vertical-align: middle; text-align: right;">
                    {{confezioneCarrello.prezzo | currency:"€"}}
                </td>                
                
                <td style="vertical-align: middle; width: 120px; min-width: 100px; text-align: right;" >
                    
                    <g:if test="${solaLettura}">
                        {{confezioneCarrello.quantita}}
                    </g:if>
                    <g:else>
	                    <div ng-if="confezioneCarrello.unitaMisura == 'UNITA'" class="input-group input-group-sm">  
	                        <span class="input-group-btn">
					            <button class="btn btn-default" type="button" ng-click="togliUno(confezioneCarrello)">
					                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
					            </button>
					        </span>
					        
	                        <input class="form-control" style="text-align: right; font-size: small;" type="text"  
		                        value="{{confezioneCarrello.quantita}}"  
		                        ng-model="confezioneCarrello.quantita" 
		                        ng-change="changeQuantita(confezioneCarrello)"
		                        only-num>
		                        
	                        <span class="input-group-btn">
	                            <button class="btn btn-default" type="button" ng-click="aggiungiUno(confezioneCarrello)">
	                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
	                            </button>
	                        </span>
	                    </div>    
	                    <div ng-if="confezioneCarrello.unitaMisura != 'UNITA'" class="input-group-sm">
	                        <div class="input-group input-group-sm">
							  <input class="form-control" style="text-align: right; font-size: small;" type="text"
							        aria-describedby="basic-addon2"  
	                                value="{{confezioneCarrello.quantita}}"  
	                                ng-model="confezioneCarrello.quantita" 
	                                ng-blur="changeQuantita(confezioneCarrello)"
	                                only-decimal 
	                                coma-dot-converter="coma-dot-converter" >
							  <span class="input-group-addon" id="basic-addon2">Kg</span>
							</div>        
	                    </div>
                    </g:else>
                </td>
                
                <td style="vertical-align: middle; text-align: right;"> 
                    {{confezioneCarrello.prezzo * confezioneCarrello.quantita | currency:"€"}}
                </td>
                
                <td style="vertical-align: middle;">
                    <a href="#" class="pull-right" type="button" ng-click="eliminaConfezione(confezioneCarrello)" ng-confirm-click="Confermi la cancellazione?">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true" style="color: red"></span>
                    </a>
                </td>
            </tr>
            
            <%--TOTALE PRODOTTI--%>            
            <tr style="border-top: 1px solid gray;">
                <td colspan="2"><h4><g:message code="carrello.totaleProdotti.label"/></h4></td>
                <td></td>
                <td></td>
                <td style="vertical-align: middle; text-align: right;">
                    {{totale | currency:"€"}}
                </td>
                <td></td>
            </tr>
            
            <g:if test="${mostraCostoSpedizione}">
                <%--COSTO SPEDIZIONE --%>      
	            <tr style="border-top: 1px solid gray;">
	                <td colspan="2"><h4><g:message code="carrello.costoSpedizione.label" default="Costo spedizione"/></h4></td>
	                <td></td>
	                <td></td>
	                <td style="vertical-align: middle; text-align: right;">
                        {{costoSpedizione | currency:"€"}}
                    </td>
	                <td></td>
	            </tr>
	            
	             <%--TOTALE --%>            
	            <tr style="border-top: 1px solid gray;">
	                <td colspan="2"><h3><g:message code="carrello.totale.label"/></h3></td>
	                <td></td>
	                <td></td>
	                <td style="vertical-align: middle; text-align: right;">
	                    {{totale + costoSpedizione | currency:"€"}}
	                </td>
	                <td></td>
                </tr>
            </g:if>
           </tbody>
        </table>       
    </div>           
</div>