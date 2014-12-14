<%@ page import="it.ggg.sa.prodotto.Confezione" %>



<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'descrizione', 'error')} required">
	<label for="descrizione">
		<g:message code="confezione.descrizione.label" default="Descrizione" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descrizione" cols="40" rows="5" maxlength="1024" required="" value="${confezioneInstance?.descrizione}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'sconto', 'error')} ">
	<label for="sconto">
		<g:message code="confezione.sconto.label" default="Sconto" />
		
	</label>
	<g:field name="sconto" value="${fieldValue(bean: confezioneInstance, field: 'sconto')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="confezione.note.label" default="Note" />
		
	</label>
	<g:textArea name="note" cols="40" rows="5" maxlength="1024" value="${confezioneInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="confezione.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: confezioneInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'prezzo', 'error')} required">
	<label for="prezzo">
		<g:message code="confezione.prezzo.label" default="Prezzo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prezzo" value="${fieldValue(bean: confezioneInstance, field: 'prezzo')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'prodotto', 'error')} required">
	<label for="prodotto">
		<g:message code="confezione.prodotto.label" default="prodotto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prodotto" name="prodotto.id" from="${it.ggg.sa.prodotto.Prodotto.list()}" optionKey="id" required="" value="${confezioneInstance?.prodotto?.id}" class="many-to-one"/>

</div>

