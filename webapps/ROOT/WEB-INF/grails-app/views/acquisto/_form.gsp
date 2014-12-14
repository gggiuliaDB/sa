<%@ page import="it.ggg.sa.acquisto.Acquisto" %>



<div class="fieldcontain ${hasErrors(bean: acquistoInstance, field: 'prodotto', 'error')} required">
	<label for="prodotto">
		<g:message code="acquisto.prodotto.label" default="Prodotto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prodotto" name="prodotto.id" from="${it.ggg.sa.prodotto.Prodotto.list()}" optionKey="id" required="" value="${acquistoInstance?.prodotto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acquistoInstance, field: 'quantita', 'error')} required">
	<label for="quantita">
		<g:message code="acquisto.quantita.label" default="Quantita" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantita" type="number" value="${acquistoInstance.quantita}" required=""/>

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

