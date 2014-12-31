<%@ page import="it.ggg.sa.acquisto.Acquisto" %>



<div class="fieldcontain ${hasErrors(bean: acquistoInstance, field: 'confezioniAcquisto', 'error')} ">
	<label for="confezioniAcquisto">
		<g:message code="acquisto.confezioniAcquisto.label" default="Confezioni Acquisto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${acquistoInstance?.confezioniAcquisto?}" var="c">
    <li><g:link controller="confezioneAcquisto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="confezioneAcquisto" action="create" params="['acquisto.id': acquistoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'confezioneAcquisto.label', default: 'ConfezioneAcquisto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: acquistoInstance, field: 'statoPagamento', 'error')} required">
	<label for="statoPagamento">
		<g:message code="acquisto.statoPagamento.label" default="Stato Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="statoPagamento" from="${it.ggg.sa.acquisto.StatoPagamento?.values()}" keys="${it.ggg.sa.acquisto.StatoPagamento.values()*.name()}" required="" value="${acquistoInstance?.statoPagamento?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: acquistoInstance, field: 'utente', 'error')} required">
	<label for="utente">
		<g:message code="acquisto.utente.label" default="Utente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utente" name="utente.id" from="${it.ggg.sa.security.User.list()}" optionKey="id" required="" value="${acquistoInstance?.utente?.id}" class="many-to-one"/>

</div>

