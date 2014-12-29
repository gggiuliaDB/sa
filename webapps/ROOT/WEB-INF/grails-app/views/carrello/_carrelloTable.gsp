<%@page import="it.ggg.sa.carrello.Carrello"%>
<%@page import="grails.converters.JSON"%>

<r:require module="carrello"/>
<div id="carrelloApp" >
    <div id="carrelloController" ng-controller="carrelloController" ng-init="init('<g:createLink  uri=""/>', ${carrelloInstance.id}, ${Carrello.confezioniCarrelloToJSON(carrelloInstance.confezioniCarrello, lang)})">
    
        <table class="table table-responsive table-condensed " name="tabella">
          <thead>       
            <tr  >
               <th colspan="2"></th>
               <th style="text-align: right;"><g:message code="carrello.prezzoUnitario.label" /></th>
               <th style="text-align: center;"><g:message code="carrello.quantita.label" /></th>
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
                    {{confezioneCarrello.prezzo | currency:"€ "}}
<%--                    &euro; <g:formatNumber number="{{confezioneCarrello.prezzo | number:2}}" type="currency" currencyCode="EUR" currencySymbol=""/>--%>
                </td>                
                
                <td style="vertical-align: middle; width: 120px; min-width: 100px;" >
                    <div class="input-group input-group-sm">                      
                        <span class="input-group-btn">
				            <button class="btn btn-default" type="button" ng-click="togliUno(confezioneCarrello)">
				                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
				            </button>
				        </span>
                        <input class="form-control" style="text-align: right; font-size: small;" type="text"  
	                        value="{{confezioneCarrello.quantita}}"  
	                        ng-model="confezioneCarrello.quantita" 
	                        ng-change="changeQuantita(confezioneCarrello)"
	                        only-digits>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" ng-click="aggiungiUno(confezioneCarrello)">
                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                            </button>
                        </span>
                    </div>    
                </td>
                
                <td style="vertical-align: middle; text-align: right;"> 
                    {{confezioneCarrello.prezzo * confezioneCarrello.quantita | currency:"€ "}}
                </td>
                
                <td style="vertical-align: middle;">
                    <a href="#" class="pull-right" type="button" ng-click="eliminaConfezione(confezioneCarrello)">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    </a>
            
                    <%--<g:link controller="carrello" action="removeConfezione" id="{{confezioneCarrello.id}}" class="pull-right"> 
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    </g:link>--%>
                </td>
            </tr>
            
            <%--TOTALE --%>            
            <tr  style="border-top: 1px solid gray;">
                <td colspan="2"><h4><g:message code="carrello.totale.label"/></h4></td>
                <td></td>
                <td></td>
                <td style="vertical-align: middle; text-align: right;">
                    {{totale | number:2}}&euro;
                </td>
                <td></td>
            </tr>
           </tbody>
        </table>
       
    </div>
           
</div>