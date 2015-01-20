<%@ page contentType="text/html"%>
L'utente ${ordine.utente.username} ha effettuato il pagamento per l'ordine con id ${ordine.id}.
Fare click sul link 
<a href="${url}">Conferma spedizione</a>  
per confermare la spedizione.<br/>
<g:render template="/ordine/riepilogo"/>