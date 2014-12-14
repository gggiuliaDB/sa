<p>
<g:link class="btn btn-primary" controller="carrello" action="add" id="${id}">
	<span class="glyphicon glyphicon-shopping-cart"></span><g:message code="vetrina.addToChart.label" />
	
</g:link>
<%--
    <g:form  class="form-horizontal" controller="carrello" action="add" method="put" >
	    <div class="form-group">
	        <g:hiddenField name="id" value="${id}"/>
	        <g:field class="form-control" name="numeroLavoratori" type="number" value="1" />
		    <g:submitButton name="add" type="button" class="btn btn-primary"
		         value="${message(code:'vetrina.addToChart.label')}"  />
	    </div>
    </g:form>
     --%>    
</p>
<%--<span class="glyphicon glyphicon-shopping-cart"></span>--%>
