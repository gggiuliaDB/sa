
<%@ page import="it.ggg.sa.prodotto.Prodotto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodotto.label', default: 'Prodotto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="container" >
		<div class="nav" role="navigation">
            <ul class="nav nav-pills">
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prodotto" class="content scaffold-show" role="main">
			<h1><%--<g:message code="default.show.label" args="[entityName]" />--%> 
			Prodotto ${prodottoInstance}</h1>
			<g:if test="${flash.message}">
			     <div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			
			<%--<ul class="property-list prodotto">--%>
            <dl class="dl-horizontal"> <%-- class="dl-horizontal" --%>
			
                <%--<g:if test="${prodottoInstance?.durata}">
                    <dt><g:message code="prodotto.durata.label" default="Durata" /></dt>
                    <dd><g:fieldValue bean="${prodottoInstance}" field="durata"/></dd>
                </g:if>--%>
           
                <g:if test="${prodottoInstance}">
                    <dt><g:message code="prodotto.nome.label" default="Nome" /></dt>
                    <dd>${prodottoInstance}</dd>
                </g:if>
            
                <g:if test="${prodottoInstance?.immagine}">
                    <dt><g:message code="prodotto.immagine.label" default="Immagine" /></dt>
                    <dd><img src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:100px" class="img-rounded"/></dd>
                </g:if>
                
                <g:if test="${prodottoInstance?.linea}">
                    <dt><g:message code="prodotto.linea.label" default="Linea" /></dt>
                    <dd>${prodottoInstance?.linea?.encodeAsHTML()}</dd>
                </g:if>
            
                <g:if test="${prodottoInstance?.tipoProdotto}">
                    <dt><g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /></dt>                   
                    <dd>${prodottoInstance?.tipoProdotto?.encodeAsHTML()}</dd>
                </g:if>
            
                <g:if test="${prodottoInstance?.confezioni}">
                    <dt><g:message code="prodotto.confezioni.label" default="Confezioni" /></dt>
                    <dd>
                    <ul>
                        <g:each in="${prodottoInstance.confezioni}" var="c">
                            <li><g:link controller="confezione" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                        </g:each>
                    </ul>
                    </dd>
                </g:if>
            
                <g:if test="${prodottoInstance?.internazionalizzazioni}">
                    <dt><g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" /></dt>
                    <dd>
                    <ul>
                        <g:each in="${prodottoInstance.internazionalizzazioni}" var="i">
                            <li><g:link controller="internazionalizzazioneProdotto" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
                        </g:each>
                    </ul>
                    </dd>
                </g:if>
            
                <g:if test="${prodottoInstance?.top}">
                    <dt><g:message code="prodotto.top.label" default="Top" /></dt>            
                    <dd><g:fieldValue bean="${prodottoInstance}" field="top"/>   </dd>               
                </g:if>
			
			</dl>
			<g:form ><%--url="[resource:prodottoInstance, action:'delete']" method="DELETE" --%>
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${prodottoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<%--<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--%>
					<g:link class="btn btn-danger" action="delete" id="${prodottoInstance.id}" onclick="return confirm('Sei sicuro?')">${message(code: 'default.button.delete.label', default: 'Delete')}</g:link>
				</fieldset>
			</g:form>
		</div>
      </div>
	</body>
</html>
