
<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<%--<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="show-confezione" class="content scaffold-show" role="main">
			<h2>Confezione ${confezioneInstance}</h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<%--
			<ul class="property-list confezione">
			
			<dl>
			  <dt>...</dt>
			  <dd>...</dd>
			</dl>--%>
			<dl class="dl-horizontal">
			
                <g:if test="${confezioneInstance?.prodotto}">
                    <dt><g:message code="confezione.prodotto.label" default="Prodotto" /></dt>
                    <dd>
                        <g:link controller="prodotto" action="show" id="${confezioneInstance?.prodotto.id}">${confezioneInstance?.prodotto?.encodeAsHTML()}</g:link>
                    </dd>
                </g:if>
            
                <g:if test="${confezioneInstance?.peso}">
                    <dt><g:message code="confezione.peso.label" default="Peso" /></dt>
                    <dd><g:fieldValue bean="${confezioneInstance}" field="peso"/></dd>
                </g:if>
            
                <g:if test="${confezioneInstance?.unitaMisura}">
                    <dt><g:message code="confezione.unitaMisura.label" default="Unita Misura" /></dt>
                    <dd><g:fieldValue bean="${confezioneInstance}" field="unitaMisura"/></dd>
                </g:if>
                
				<g:if test="${confezioneInstance?.durata}">
					<dt><g:message code="confezione.durata.label" default="Durata" /></dt>
					<dd><g:fieldValue bean="${confezioneInstance}" field="durata"/></dd>
				</g:if>
			     
			    <g:if test="${confezioneInstance?.tipoDurata}">
                    <dt><g:message code="confezione.tipoDurata.label" default="Tipo Durata" /></dt>
                    <dd><g:fieldValue bean="${confezioneInstance}" field="tipoDurata"/></dd>
                </g:if>
            
				<g:if test="${confezioneInstance?.quantitaCartone}">
					<dt><g:message code="confezione.quantitaCartone.label" default="Quantita Cartone" /></dt>
					<dd><g:fieldValue bean="${confezioneInstance}" field="quantitaCartone"/></dd>
				</g:if>
				
				<g:if test="${confezioneInstance?.prezzo}">
					<dt><g:message code="confezione.prezzo.label" default="Prezzo" /></dt>
					<dd>
    					&euro; <g:formatNumber number="${confezioneInstance.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/> 
					   <%--<g:fieldValue bean="${confezioneInstance}" field="prezzo"/>--%>
				    </dd>
				</g:if>
			
				<g:if test="${confezioneInstance?.sconto}">
                    <dt><g:message code="confezione.sconto.label" default="Sconto" /></dt>
                    <dd><g:fieldValue bean="${confezioneInstance}" field="sconto"/></dd>
                </g:if>
            
            
				<g:if test="${confezioneInstance?.internazionalizzazioni}">
                    <dt><g:message code="confezione.internazionalizzazioni.label" default="Internazionalizzazioni" /></dt>
                    <dd>
                        <ul>
                        <g:each in="${confezioneInstance.internazionalizzazioni}" var="i">
                            <li><span class="property-value" aria-labelledby="internazionalizzazioni-label"><g:link controller="internazionalizzazioneConfezione" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span></li>
                        </g:each>
                        </ul>
                    </dd>
                </g:if>
            
			</dl>
			<g:form > <%--url="[resource:confezioneInstance, action:'delete']" method="DELETE" --%>
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${confezioneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<%--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--%>
					<g:link class="btn btn-danger" action="delete" id="${confezioneInstance.id}" onclick="return confirm('Sei sicuro?')">${message(code: 'default.button.delete.label', default: 'Delete')}</g:link>
					
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
