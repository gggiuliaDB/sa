<%@ page import="it.ggg.sa.carrello.Carrello" %>



<div class="fieldcontain ${hasErrors(bean: carrelloInstance, field: 'confezioniCarrello', 'error')} ">
	<label for="confezioniCarrello">
		<g:message code="carrello.confezioniCarrello.label" default="Confezioni Carrello" />
		
	</label>
	<g:select name="confezioniCarrello" from="${it.ggg.sa.carrello.ConfezioneCarrello.list()}" multiple="multiple" optionKey="id" size="5" value="${carrelloInstance?.confezioniCarrello*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrelloInstance, field: 'utente', 'error')} required">
	<label for="utente">
		<g:message code="carrello.utente.label" default="Utente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utente" name="utente.id" from="${it.ggg.sa.security.User.list()}" optionKey="id" required="" value="${carrelloInstance?.utente?.id}" class="many-to-one"/>

</div>

