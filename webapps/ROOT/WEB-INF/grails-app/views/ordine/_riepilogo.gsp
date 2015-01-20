Riepilogo ordine:<br/>

<g:set var="totale" value="${ordine.calcolaTotale()}"></g:set>
<g:set var="costoSpedizione" value="${ordine.costoSpedizione(totale)}"></g:set>

<table class="table table-responsive table-condensed " name="tabella">
  <thead>        
    <tr  >
       <th style="text-align: right;"><g:message code="carrello.prodotto.label" /></th>
       <th style="text-align: right;"><g:message code="carrello.prezzo.label" /></th>
       <th style="text-align: right;"><g:message code="carrello.quantita.label" /></th>
       <th style="text-align: right;"><g:message code="carrello.prezzoTotale.label" /></th>
       <th></th>
    </tr>
  </thead>
  <tbody>
    <g:each in="${ordine.confezioniOrdine}" var="confezioneOrdine">
	    <tr style="font-size: small;">
	        	        
	        <td style="vertical-align: middle;; text-align: left;">
	            <strong>${confezioneOrdine.confezione.prodotto.nome}</strong>
	            ${confezioneOrdine.confezione.nome}
	        </td>
	        
	        <td style="vertical-align: middle; text-align: right;">
	            &euro; <g:formatNumber number="${confezioneOrdine.confezione.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/>	            
	        </td>                
	        
	        <td style="vertical-align: middle; width: 120px; min-width: 100px; text-align: right;" >
	            ${confezioneOrdine.quantita}
	        </td>
	        
	        <td style="vertical-align: middle; text-align: right;"> 
                &euro; <g:formatNumber number="${confezioneOrdine.confezione.prezzo * confezioneOrdine.quantita}" type="currency" currencyCode="EUR" currencySymbol=""/>	            
	        </td>   
        </tr>
    </g:each>
    
    <%--TOTALE PRODOTTI--%>            
    <tr style="border-top: 1px solid gray;">
        <td><h4><g:message code="carrello.totaleProdotti.label"/></h4></td>
        <td></td>
        <td></td>
        <td style="vertical-align: middle; text-align: right;">
            &euro; <g:formatNumber number="${totale}" type="currency" currencyCode="EUR" currencySymbol=""/>               
        </td>
    </tr>
    
    <%--COSTO SPEDIZIONE --%>      
    <tr style="border-top: 1px solid gray;">
        <td><h4><g:message code="carrello.costoSpedizione.label" default="Costo spedizione"/></h4></td>
        <td></td>
        <td></td>
        <td style="vertical-align: middle; text-align: right;">
            &euro; <g:formatNumber number="${costoSpedizione}" type="currency" currencyCode="EUR" currencySymbol=""/>               
        </td>
        <td></td>
    </tr>
    
     <%--TOTALE --%>            
    <tr style="border-top: 1px solid gray;">
        <td><h3><g:message code="carrello.totale.label"/></h3></td>
        <td></td>
        <td></td>
        <td style="vertical-align: middle; text-align: right;">
            &euro; <g:formatNumber number="${totale + costoSpedizione}" type="currency" currencyCode="EUR" currencySymbol=""/>               
        </td>
        <td></td>
    </tr>
   </tbody>
</table>