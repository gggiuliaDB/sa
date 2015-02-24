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
            
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    ${flash.error}
                </div>                       
            </g:if>
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">
                    ${flash.message}
                </div>                       
            </g:if>
            
		    <g:if test="${tasks}" >
		      <p>
		       <g:message code="tasks.number.label" args="${tasks.size()}"/>
              </p>
		     
			  <table class="table">
			    <thead>       
                    <tr>
				       <th style="text-align: left;"><g:message code="task.orderId.column"     /></th>
				       <th style="text-align: left;"><g:message code="task.attivita.column"    /></th>
				       <th style="text-align: left;"><g:message code="task.utente.column"      /></th>
				       <th style="text-align: right;"><g:message code="task.numeroPezzi.column" /></th>
				       <th style="text-align: right;"><g:message code="task.totale.column"      /></th>
				       <%--<th></th>--%>
				    </tr>
                </thead>
                <tbody>
			        <g:each in="${tasks}" var="t" >
			            <tr>
                            <td style="text-align: left;">${t.ordine.id}</td>
                            <td>
                                <g:link controller="task" action="getForm" params="[taskId:t.id]"> 
				                    ${t.description}
				                </g:link> 
			                </td>
			                <td>${t.utente}</td>
			                <td style="text-align: right;">${t.ordine.contaConfezioni()}</td>
			                <td style="text-align: right;">&euro; <g:formatNumber number="${t.ordine.calcolaTotale()}" type="currency" currencyCode="EUR" currencySymbol=""/></td>
			                <%--<td>
				                <g:link class="btn btn-sm btn-success" controller="task" action="getForm" params="[taskId:t.id]">Vai</g:link>
                            </td>--%>
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
