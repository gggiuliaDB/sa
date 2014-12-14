<%@ page import="it.ggg.sa.prodotto.Prodotto" %>



<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'descrizione', 'error')} ">
	<label for="descrizione">
		<g:message code="prodotto.descrizione.label" default="Descrizione" />
		
	</label>
	<g:textArea name="descrizione" cols="40" rows="5" maxlength="1024" value="${prodottoInstance?.descrizione}"/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'comeGustarlo', 'error')} ">
	<label for="comeGustarlo">
		<g:message code="prodotto.comeGustarlo.label" default="Come Gustarlo" />
		
	</label>
	<g:textArea name="comeGustarlo" cols="40" rows="5" maxlength="1024" value="${prodottoInstance?.comeGustarlo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'ingredienti', 'error')} ">
	<label for="ingredienti">
		<g:message code="prodotto.ingredienti.label" default="Ingredienti" />
		
	</label>
	<g:textArea name="ingredienti" cols="40" rows="5" maxlength="1024" value="${prodottoInstance?.ingredienti}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'conservazione', 'error')} ">
	<label for="conservazione">
		<g:message code="prodotto.conservazione.label" default="Conservazione" />
		
	</label>
	<g:textArea name="conservazione" cols="40" rows="5" maxlength="1024" value="${prodottoInstance?.conservazione}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="prodotto.note.label" default="Note" />
		
	</label>
	<g:textArea name="note" cols="40" rows="5" maxlength="1024" value="${prodottoInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
	<label for="linea">
		<g:message code="prodotto.linea.label" default="linea" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="linea" name="linea.id" from="${it.ggg.sa.prodotto.Linea.list()}" optionKey="id" required="" value="${prodottoInstance?.linea?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prodottoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="prodotto.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${prodottoInstance?.nome}"/>

</div>

