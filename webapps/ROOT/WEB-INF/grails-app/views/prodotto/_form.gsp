<%@ page import="it.ggg.sa.prodotto.Prodotto" %>



<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'durata', 'error')} ">
	<label for="durata">
		<g:message code="prodotto.durata.label" default="Durata" />
		
	</label>
	<g:field name="durata" type="number" value="${prodottoInstance.durata}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'immagine', 'error')} ">
	<label for="immagine">
		<g:message code="prodotto.immagine.label" default="Immagine" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'commenti', 'error')} ">
	<label for="commenti">
		<g:message code="prodotto.commenti.label" default="Commenti" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${prodottoInstance?.commenti?}" var="c">
    <li><g:link controller="commento" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commento" action="create" params="['prodotto.id': prodottoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commento.label', default: 'Commento')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'confezioni', 'error')} ">
	<label for="confezioni">
		<g:message code="prodotto.confezioni.label" default="Confezioni" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${prodottoInstance?.confezioni?}" var="c">
    <li><g:link controller="confezione" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="confezione" action="create" params="['prodotto.id': prodottoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'confezione.label', default: 'Confezione')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'internazionalizzazioni', 'error')} ">
	<label for="internazionalizzazioni">
		<g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${prodottoInstance?.internazionalizzazioni?}" var="i">
    <li><g:link controller="internazionalizzazioneProdotto" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="internazionalizzazioneProdotto" action="create" params="['prodotto.id': prodottoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
	<label for="linea">
		<g:message code="prodotto.linea.label" default="Linea" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="linea" name="linea.id" from="${it.ggg.sa.prodotto.Linea.list()}" optionKey="id" required="" value="${prodottoInstance?.linea?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
	<label for="tipoProdotto">
		<g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoProdotto" name="tipoProdotto.id" from="${it.ggg.sa.prodotto.TipoProdotto.list()}" optionKey="id" required="" value="${prodottoInstance?.tipoProdotto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'top', 'error')} required">
	<label for="top">
		<g:message code="prodotto.top.label" default="Top" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="top" type="number" value="${prodottoInstance.top}" required=""/>

</div>

