<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'nome', 'error')} required">
    <div class="col-sm-3">
	    <label for="nome">
	        <g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
	        <span class="required-indicator">*</span>
	    </label>
    </div>
    <div class="col-sm-5">
        <g:textField class="form-control input-sm" name="nome" required="" value="${internazionalizzazioneProdottoInstance?.nome}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'descrizione', 'error')} ">
    <div class="col-sm-3">
		<label for="descrizione">
			<g:message code="internazionalizzazioneProdotto.descrizione.label" default="Descrizione" />
		</label>
    </div>
    <div class="col-sm-5">
    	<g:textArea class="form-control input-sm" name="descrizione" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.descrizione}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'comeGustarlo', 'error')} ">
    <div class="col-sm-3">
		<label for="comeGustarlo">
			<g:message code="internazionalizzazioneProdotto.comeGustarlo.label" default="Come Gustarlo" />
		</label>
    </div>
    <div class="col-sm-5">
    	<g:textArea class="form-control input-sm" name="comeGustarlo" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.comeGustarlo}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'ingredienti', 'error')} ">
    <div class="col-sm-3">
		<label for="ingredienti">
			<g:message code="internazionalizzazioneProdotto.ingredienti.label" default="Ingredienti" />
		</label>
    </div>
    <div class="col-sm-5">
    	<g:textArea class="form-control input-sm" name="ingredienti" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.ingredienti}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'conservazione', 'error')} ">
    <div class="col-sm-3">
		<label for="conservazione">
			<g:message code="internazionalizzazioneProdotto.conservazione.label" default="Conservazione" />
		</label>
    </div>
    <div class="col-sm-5">
    	<g:textArea class="form-control input-sm" name="conservazione" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.conservazione}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'note', 'error')} ">
    <div class="col-sm-3">
		<label for="note">
			<g:message code="internazionalizzazioneProdotto.note.label" default="Note" />
		</label>
	</div>
    <div class="col-sm-5">
    	<g:textArea class="form-control input-sm" name="note" cols="40" rows="5" maxlength="1024" value="${internazionalizzazioneProdottoInstance?.note}"/>
    </div>
</div>

<g:if test="${action!='create'}">
	<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'locale', 'error')} required">
	    <div class="col-sm-3">
			<label for="locale">
				<g:message code="internazionalizzazioneProdotto.locale.label" default="Locale" />
				<span class="required-indicator">*</span>
			</label>
	    </div>
	    <div class="col-sm-5">
	    	<g:textField class="form-control input-sm" name="locale" required="" value="${internazionalizzazioneProdottoInstance?.locale}"/>
	    </div>
	</div>
	
	
	<div class="form-group fieldcontain ${hasErrors(bean: internazionalizzazioneProdottoInstance, field: 'prodotto', 'error')} required">
	    <div class="col-sm-3">
			<label for="prodotto">
				<g:message code="internazionalizzazioneProdotto.prodotto.label" default="Prodotto" />
				<span class="required-indicator">*</span>
	    	</label>
	    </div>
	    <div class="col-sm-5">
	    	<g:select class="form-control input-sm" id="prodotto" name="prodotto.id" from="${it.ggg.sa.prodotto.Prodotto.list()}" optionKey="id" required="" value="${internazionalizzazioneProdottoInstance?.prodotto?.id}" class="many-to-one"/>
	    </div>
</div>
</g:if>
