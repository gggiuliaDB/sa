<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ordine.label', default: 'Ordine')}" />
        <title><g:message code="tasks.label"/></title>
    </head>
    <body>
        <div class="container">
            <h2><g:message code="tasks.label"/></h2>
            
		    <g:if test="${tasks}" > 
			  <table class="table">
			    <thead>       
                    <tr>
				       <th style="text-align: right;"><g:message code="task.orderId.column"     /></th>
				       <th style="text-align: left;"><g:message code="task.attivita.column"    /></th>
				       <th style="text-align: left;"><g:message code="task.utente.column"      /></th>
				       <th style="text-align: right;"><g:message code="task.numeroPezzi.column" /></th>
				       <th style="text-align: right;"><g:message code="task.totale.column"      /></th>
				    </tr>
                </thead>
                <tbody>
			        <g:each in="${tasks}" var="t" >
			            <tr>
                            <td style="text-align: right;">${t.ordine.id}</td>
                            <td>
                                <g:link controller="task" action="getForm" params="[taskId:t.id]">
				                    ${t.description}
				                </g:link>
			                </td>
			                <td>${t.utente}</td>
			                <td style="text-align: right;">${t.ordine.contaConfezioni()}</td>
			                <td style="text-align: right;">&euro; <g:formatNumber number="${t.ordine.calcolaTotale()}" type="currency" currencyCode="EUR" currencySymbol=""/></td>
			            </tr>
			        </g:each>
		        </tbody>
              </table>
			</g:if>
			<g:else>
			    <g:message code="task.nessunaAttivita.label"/>
			</g:else>              
        </div>
    </body>
</html>
