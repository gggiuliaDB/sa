<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="ordini.listForUser.label"/></title>
    </head>
    <body>
        <div class="container">
            <h2><g:message code="ordini.listForUser.label"/></h2>
            
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:elseif test="${flash.message }">
                <div class="alert alert-info" role="alert">
                    ${flash.message}
                </div>
            </g:elseif>
            <g:else>
		      <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
                <g:if test="${!lang}">
                    <g:set var="lang" value="it"/>
                </g:if> 
                
                <g:if test="${ordini}" > 
                  <table class="table">
                    <thead>       
                        <tr>
                           <g:sortableColumn property="id" title="${message(code: 'ordine.id.column', default: 'id')}" style="text-align: right;"/>
                           <g:sortableColumn property="dateCreated" title="${message(code: 'ordine.data_creazione.column', default: 'data_creazione')}" />
                           <g:sortableColumn property="statoPagamento" title="${message(code: 'ordine.statoPagamento.column', default: 'statoPagamento')}" />
                           <th style="text-align: right;"><g:message code="ordine.totale.column"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${ordini}" var="ordine" >
                            <tr>
                                <td style="text-align: right;">${ordine.id}</td>
                                <td style="text-align: left;" ><g:formatDate date="${ordine.dateCreated}" format="dd/MM/yyyy"/></td>
                                <td style="text-align: left;" >${ordine.statoPagamento.toString(lang)}</td>
                                <td style="text-align: right;">
                                    &euro; <g:formatNumber number="${ordine.calcolaTotale()}" type="currency" currencyCode="EUR" currencySymbol=""/>                
                                </td>
                                                                
                            </tr>
                        </g:each>
                    </tbody>
                  </table>
                  <div class="pagination">
                    <g:paginate total="${ordiniCount ?: 0}" />
                  </div>
                </g:if>
                <g:else>
                    <g:message code="ordini.nessun.ordine.label"/>
                </g:else>
                
			</g:else>
        </div>
    </body>
</html>
