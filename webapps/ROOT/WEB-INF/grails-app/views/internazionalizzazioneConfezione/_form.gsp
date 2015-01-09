<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneConfezione" %>



<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneConfezioneInstance, field: 'descrizione', 'error')} required">
	<label for="descrizione">
		<g:message code="internazionalizzazioneConfezione.descrizione.label" default="Descrizione" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descrizione" cols="40" rows="5" maxlength="1024" required="" value="${internazionalizzazioneConfezioneInstance?.descrizione}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneConfezioneInstance, field: 'confezione', 'error')} required">
	<label for="confezione">
		<g:message code="internazionalizzazioneConfezione.confezione.label" default="Confezione" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="confezione" name="confezione.id" from="${it.ggg.sa.prodotto.Confezione.list()}" optionKey="id" required="" value="${internazionalizzazioneConfezioneInstance?.confezione?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneConfezioneInstance, field: 'locale', 'error')} required">
	<label for="locale">
		<g:message code="internazionalizzazioneConfezione.locale.label" default="Locale" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locale" required="" value="${internazionalizzazioneConfezioneInstance?.locale}"/>

</div>

