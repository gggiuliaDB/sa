<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<r:require module="prodotto"/>
<div id="prodottoApp" >
    <div id="prodottoController" >

		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'prodotto', 'error')} required">
		    <div class="col-sm-3">
			    <label for="prodotto">
			        <g:message code="confezione.prodotto.label" default="Prodotto" />
			    </label>
		    </div>
		    <div class="col-sm-5">
		      <g:link controller="prodotto" action="show" id="${confezioneInstance?.prodotto?.id}">${confezioneInstance?.prodotto}</g:link>
		    </div>
		</div>
		
        <div class="form-group fieldcontain  required">
            <div class="col-sm-3">
                <label for="nome">
                    <g:message code="confezione.nome.label" default="Nome" />
                </label>
            </div>
            <div class="col-sm-5"><g:field class="form-control input-sm" type="text" name="nome" value="${confezioneInstance}"/></div>
        </div>

		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'peso', 'error')} ">
		    <div class="col-sm-3">
			    <label for="peso">
			        <g:message code="confezione.peso.label" default="Peso" />
			    </label>
		    </div>
		    <div class="col-sm-5"><g:field only-decimal class="form-control input-sm" type="text" name="peso" value="${fieldValue(bean: confezioneInstance, field: 'peso')}"/></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'unitaMisura', 'error')} ">
		    <div class="col-sm-3">
			    <label for="unitaMisura">
			        <g:message code="confezione.unitaMisura.label" default="Unita Misura" />
			        <span class="required-indicator">*</span>
			    </label>
		    </div>
		    <div class="col-sm-5"><g:select class="form-control input-sm" name="unitaMisura" from="${it.ggg.sa.prodotto.TipoUnitaMisura?.values()}" keys="${it.ggg.sa.prodotto.TipoUnitaMisura.values()*.name()}" value="${confezioneInstance?.unitaMisura?.name()}"/></div> <%--  noSelection="['': '']" --%>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'durata', 'error')} ">
			<div class="col-sm-3">
			    <label for="durata">
					<g:message code="confezione.durata.label" default="Durata" />
				</label>
			</div>
			<div class="col-sm-5"><g:field only-num class="form-control input-sm" name="durata" type="text" value="${confezioneInstance?.durata}"/></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'tipoDurata', 'error')} required">
		    <div class="col-sm-3">
			    <label for="tipoDurata">
			        <g:message code="confezione.tipoDurata.label" default="Tipo Durata" />
			        <span class="required-indicator">*</span>
			    </label>
		    </div>
		    <div class="col-sm-5"><g:select class="form-control input-sm" name="tipoDurata" from="${it.ggg.sa.carrello.TipoDurata?.values()}" keys="${it.ggg.sa.carrello.TipoDurata.values()*.name()}" required="" value="${confezioneInstance?.tipoDurata?.name()}" /></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'quantitaCartone', 'error')} ">
		    <div class="col-sm-3">
				<label for="quantitaCartone">
					<g:message code="confezione.quantitaCartone.label" default="Quantita Cartone" />
		    	</label>
		   	</div>
			<div class="col-sm-5"><g:field only-num class="form-control input-sm" name="quantitaCartone" type="text" value="${confezioneInstance?.quantitaCartone}"/></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'prezzo', 'error')} required">
		    <div class="col-sm-3">
				<label for="prezzo">
					<g:message code="confezione.prezzo.label" default="Prezzo" />
					<span class="required-indicator">*</span>
		    	</label>
		   	</div>
			<div class="col-sm-5"><g:field only-decimal class="form-control input-sm" type="text" name="prezzo" value="${fieldValue(bean: confezioneInstance, field: 'prezzo')}" required=""/></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'sconto', 'error')} ">
		    <div class="col-sm-3">
			    <label for="sconto">
			        <g:message code="confezione.sconto.label" default="Sconto" />
			    </label>
		    </div>
		    <div class="col-sm-5"><g:field only-decimal class="form-control input-sm" type="text" name="sconto" value="${fieldValue(bean: confezioneInstance, field: 'sconto')}"/></div>
		</div>
		
		<div class="form-group fieldcontain ${hasErrors(bean: confezioneInstance, field: 'internazionalizzazioni', 'error')} ">
		    <div class="col-sm-3">
			    <label for="internazionalizzazioni">
			        <g:message code="confezione.internazionalizzazioni.label" default="Internazionalizzazioni" />
			    </label>    
		    </div>
		    <div class="col-sm-5">
		      <ul class="one-to-many">
		        <g:each in="${confezioneInstance?.internazionalizzazioni?}" var="i">
		            <li><g:link controller="internazionalizzazioneConfezione" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
		        </g:each>
		        <li class="add">
		          <g:link controller="internazionalizzazioneConfezione" action="create" params="['confezione.id': confezioneInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'internazionalizzazioneConfezione.label', default: 'InternazionalizzazioneConfezione')])}</g:link>
		        </li>
		      </ul>
		    </div>
		</div>
    </div>
</div>