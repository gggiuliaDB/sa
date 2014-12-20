<%@page import="it.ggg.sa.carrello.Carrello"%>
<%@page import="grails.converters.JSON"%>

<r:require module="carrello"/>

<%--carrelloInstance.id: ${carrelloInstance.id}<br>--%>
<%--confezioniCarrello: ${Carrello.confezioniCarrelloToJSON(carrelloInstance.confezioniCarrello)}<br>--%>

<div id="carrelloApp" >
    <div  ng-controller="carrelloController" ng-init="init('<g:createLink  uri=""/>', ${carrelloInstance.id}, ${Carrello.confezioniCarrelloToJSON(carrelloInstance.confezioniCarrello)})"> 
       
        <table class="table table-responsive table-condensed table-hover" style="font-size: small;" name="tabella">
          <thead>       
            <tr>
               <th colspan="2"></th>
               <th><g:message code="carrello.quantita.label" /></th>
               <th><g:message code="carrello.prezzoUnitario.label" /></th>
               <th><g:message code="carrello.prezzoTotale.label" /></th>
               <th></th>
            </tr>
          </thead>
          <tbody>
            <tr ng-repeat="confezioneCarrello in confezioniCarrello">
                <td style="vertical-align: middle;">                    
                    <img src='<g:createLink controller="prodotto" action="viewImage" id="{{confezioneCarrello.prodottoId}}" />' style="width:100px;" class="img-rounded" />                
                </td>
                <td style="vertical-align: middle;">
                    <h4>{{confezioneCarrello.nome}}</h4>
                    <p>{{confezioneCarrello.descrizione}}</p>
                </td>
                <td style="vertical-align: middle; width: 100px; min-width: 100px;" >
	                    <input class="form-control input-sm"  type="number" min="1" max="100"
	                        value="{{confezioneCarrello.quantita}}"  
	                        ng-model="confezioneCarrello.quantita" 
	                        ng-change="changeQuantita(confezioneCarrello)">
                </td>
                <td style="vertical-align: middle;">
                    {{confezioneCarrello.prezzo}} &euro;
                </td>
                <td style="vertical-align: middle;">
                    {{confezioneCarrello.prezzo * confezioneCarrello.quantita}} &euro;
                </td>
                <td style="vertical-align: middle;">
                    <g:link controller="carrello" action="removeConfezione" id="{{confezioneCarrello.id}}" params="[carrelloId: carrelloInstance.id]" class="btn btn-warning btn-sm pull-right">
                        <g:message code="default.button.delete.label" />
                    </g:link>
                </td>
            </tr>
           </tbody>
        </table>
        
        <%--<jq:jquery>
          $(function() {
            $( ".spinner" ).spinner();         
          });
        </jq:jquery>--%> 
    </div>       
</div>