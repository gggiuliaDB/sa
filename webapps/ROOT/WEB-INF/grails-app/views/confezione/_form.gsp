<%@ page import="it.ggg.sa.prodotto.Confezione" %>



<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'sconto', 'error')} ">
	<label for="sconto">
		<g:message code="confezione.sconto.label" default="Sconto" />
		
	</label>
	<g:field name="sconto" value="${fieldValue(bean: confezioneInstance, field: 'sconto')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'unitaMisura', 'error')} ">
	<label for="unitaMisura">
		<g:message code="confezione.unitaMisura.label" default="Unita Misura" />
		
	</label>
	<g:select name="unitaMisura" from="${it.ggg.sa.prodotto.TipoUnitaMisura?.values()}" keys="${it.ggg.sa.prodotto.TipoUnitaMisura.values()*.name()}" value="${confezioneInstance?.unitaMisura?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'peso', 'error')} ">
	<label for="peso">
		<g:message code="confezione.peso.label" default="Peso" />
		
	</label>
	<g:field name="peso" value="${fieldValue(bean: confezioneInstance, field: 'peso')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'durata', 'error')} ">
	<label for="durata">
		<g:message code="confezione.durata.label" default="Durata" />
		
	</label>
	<g:field name="durata" type="number" value="${confezioneInstance.durata}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'quantitaCartone', 'error')} ">
	<label for="quantitaCartone">
		<g:message code="confezione.quantitaCartone.label" default="Quantita Cartone" />
		
	</label>
	<g:field name="quantitaCartone" type="number" value="${confezioneInstance.quantitaCartone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'internazionalizzazioni', 'error')} ">
	<label for="internazionalizzazioni">
		<g:message code="confezione.internazionalizzazioni.label" default="Internazionalizzazioni" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${confezioneInstance?.internazionalizzazioni?}" var="i">
    <li><g:link controller="internazionalizzazioneConfezione" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="internazionalizzazioneConfezione" action="create" params="['confezione.id': confezioneInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'internazionalizzazioneConfezione.label', default: 'InternazionalizzazioneConfezione')])}</g:link>
</li>
</ul>


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
		<g:message code="confezione.prodotto.label" default="Prodotto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prodotto" name="prodotto.id" from="${it.ggg.sa.prodotto.Prodotto.list()}" optionKey="id" required="" value="${confezioneInstance?.prodotto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: confezioneInstance, field: 'tipoDurata', 'error')} required">
	<label for="tipoDurata">
		<g:message code="confezione.tipoDurata.label" default="Tipo Durata" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDurata" from="${it.ggg.sa.carrello.TipoDurata?.values()}" keys="${it.ggg.sa.carrello.TipoDurata.values()*.name()}" required="" value="${confezioneInstance?.tipoDurata?.name()}" />

</div>

