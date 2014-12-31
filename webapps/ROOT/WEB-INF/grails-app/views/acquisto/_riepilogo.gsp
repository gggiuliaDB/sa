<table class="table table-responsive table-condensed " style="font-size: small;" name="tabella">
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
    <g:each in="${acquistoInstance.confezioniAcquisto}" var="confezioneCarrello">
        <tr >
    
        <td style="vertical-align: middle;">                    
            <img src='<g:createLink controller="prodotto" action="viewImage" id="${confezioneCarrello.confezione.prodotto.id}" />' style="width:100px;" class="img-rounded" />                
        </td>
        <td style="vertical-align: middle;">
            <h4>${confezioneCarrello.confezione.prodotto.getNome("it")}</h4>
            <p>${confezioneCarrello.confezione.getDescrizione("it")}</p>
        </td>
        <td style="vertical-align: middle;">
            ${confezioneCarrello.quantita}
        </td>
        <td style="vertical-align: middle;">
            ${confezioneCarrello.confezione.prezzo} &euro;
        </td>
        <td style="vertical-align: middle;">
            ${confezioneCarrello.confezione.prezzo * confezioneCarrello.quantita} &euro;
        </td>
    </tr>
    </g:each>
   </tbody>
</table>