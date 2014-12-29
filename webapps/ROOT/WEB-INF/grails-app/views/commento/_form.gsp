<%@ page import="it.ggg.sa.commento.Commento" %>



<div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'commento', 'error')} ">
	<label for="commento">
		<g:message code="commento.commento.label" default="Commento" />
		
	</label>
	<g:textArea name="commento" cols="40" rows="5" maxlength="1024" value="${commentoInstance?.commento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'rating', 'error')} ">
	<label for="rating">
		<g:message code="commento.rating.label" default="Rating" />
		
	</label>
	<g:field name="rating" type="number" value="${commentoInstance.rating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'utente', 'error')} required">
	<label for="utente">
		<g:message code="commento.utente.label" default="Utente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utente" name="utente.id" from="${it.ggg.sa.security.User.list()}" optionKey="id" required="" value="${commentoInstance?.utente?.id}" class="many-to-one"/>

</div>

