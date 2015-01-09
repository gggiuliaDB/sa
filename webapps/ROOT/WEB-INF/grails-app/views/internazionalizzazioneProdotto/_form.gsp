<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>



<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'descrizione', 'error')} ">
	<label for="descrizione">
		<g:message code="internazionalizzazioneProdotto.descrizione.label" default="Descrizione" />
		
	</label>
	<g:textArea name="descrizione" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.descrizione}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'comeGustarlo', 'error')} ">
	<label for="comeGustarlo">
		<g:message code="internazionalizzazioneProdotto.comeGustarlo.label" default="Come Gustarlo" />
		
	</label>
	<g:textArea name="comeGustarlo" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.comeGustarlo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'ingredienti', 'error')} ">
	<label for="ingredienti">
		<g:message code="internazionalizzazioneProdotto.ingredienti.label" default="Ingredienti" />
		
	</label>
	<g:textArea name="ingredienti" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.ingredienti}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'conservazione', 'error')} ">
	<label for="conservazione">
		<g:message code="internazionalizzazioneProdotto.conservazione.label" default="Conservazione" />
		
	</label>
	<g:textArea name="conservazione" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.conservazione}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="internazionalizzazioneProdotto.note.label" default="Note" />
		
	</label>
	<g:textArea name="note" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'locale', 'error')} required">
	<label for="locale">
		<g:message code="internazionalizzazioneProdotto.locale.label" default="Locale" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locale" required="" value="${internazionalizzazioneProdottoInstance?.locale}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${internazionalizzazioneProdottoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'prodotto', 'error')} required">
	<label for="prodotto">
		<g:message code="internazionalizzazioneProdotto.prodotto.label" default="Prodotto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prodotto" name="prodotto.id" from="${it.ggg.sa.prodotto.Prodotto.list()}" optionKey="id" required="" value="${internazionalizzazioneProdottoInstance?.prodotto?.id}" class="many-to-one"/>

</div>

