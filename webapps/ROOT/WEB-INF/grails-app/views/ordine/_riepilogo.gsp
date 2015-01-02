<table class="table table-responsive table-condensed " style="font-size: small;" name="tabella">
  <thead>       
    <tr>
       <th colspan="2"></th>
       <th style="vertical-align: middle; text-align: right;"><g:message code="carrello.quantita.label" /></th>
       <th style="vertical-align: middle; text-align: right;"><g:message code="carrello.prezzoUnitario.label" /></th>
       <th style="vertical-align: middle; text-align: right;"><g:message code="carrello.prezzoTotale.label" /></th>
       <th></th>
    </tr>
  </thead>
  <tbody>
    <g:each in="${ordine.confezioniOrdine}" var="confezioneCarrello">
        <tr >
    
        <td style="vertical-align: middle;">                    
            <img src='<g:createLink controller="prodotto" action="viewImage" id="${confezioneCarrello.confezione.prodotto.id}" />' style="width:100px;" class="img-rounded" />                
        </td>
        <td style="vertical-align: middle;">
            <h4>${confezioneCarrello.confezione.prodotto.getNome("it")}</h4>
            <p>${confezioneCarrello.confezione.getDescrizione("it")}</p>
        </td>
        <td style="vertical-align: middle; text-align: right;">
            ${confezioneCarrello.quantita}
        </td>
        <td style="vertical-align: middle; text-align: right;">
            &euro; <g:formatNumber number="${confezioneCarrello.confezione.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/>
        </td>
        <td style="vertical-align: middle; text-align: right;">
            &euro; <g:formatNumber number="${confezioneCarrello.confezione.prezzo * confezioneCarrello.quantita}" type="currency" currencyCode="EUR" currencySymbol=""/>
        </td>
    </tr>
    </g:each>
    
    <%--TOTALE --%>            
    <tr  style="border-top: 1px solid gray;">
	    <td colspan="2"><h4><g:message code="carrello.totale.label"/></h4></td>
	    <td></td>
	    <td></td>
	    <td style="vertical-align: middle; text-align: right;">
	         &euro; <g:formatNumber number="${ordine.calcolaTotale()}" type="currency" currencyCode="EUR" currencySymbol=""/> 
	    </td>
	    <td></td>
	</tr>

   </tbody>
   
</table>