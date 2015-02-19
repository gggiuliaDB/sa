<%@ page contentType="text/html"%>
L'utente ${ordine.utente.username} ha richiesto la disponibilit&agrave; per l'ordine con id ${ordine.id}.<br/>
Fare click sul link <a href="${url}">Conferma disponibilit&agrave;</a> per confermare o annullare l'ordine.<br/>

Riepilogo ordine:<br/>
<g:render template="/ordine/riepilogo"/>