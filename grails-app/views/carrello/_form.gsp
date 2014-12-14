<%@ page import="it.ggg.sa.carrello.Carrello" %>



<div class="fieldcontain ${hasErrors(bean: carrelloInstance, field: 'confezione', 'error')} required">
	<label for="confezione">
		<g:message code="carrello.confezione.label" default="Confezione" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="confezione" name="confezione.id" from="${it.ggg.sa.prodotto.Confezione.list()}" optionKey="id" required="" value="${carrelloInstance?.confezione?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrelloInstance, field: 'quantita', 'error')} required">
	<label for="quantita">
		<g:message code="carrello.quantita.label" default="Quantita" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantita" type="number" value="${carrelloInstance.quantita}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrelloInstance, field: 'utente', 'error')} required">
	<label for="utente">
		<g:message code="carrello.utente.label" default="Utente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utente" name="utente.id" from="${it.ggg.sa.security.User.list()}" optionKey="id" required="" value="${carrelloInstance?.utente?.id}" class="many-to-one"/>

</div>

