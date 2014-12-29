<g:if test="${value==0}">
	<g:each in="${(1..5)}" >
	  <span class="glyphicon glyphicon-star-empty"></span>
	</g:each>
</g:if>
<g:elseif test="${value==5}">
    <g:each in="${(1..5)}" >
      <span class="glyphicon glyphicon-star"></span>
    </g:each>
</g:elseif>

<g:else>
	<g:each in="${(1..value)}" var="s1">
	  <span class="glyphicon glyphicon-star"></span>
	</g:each>
	<g:each in="${(value+1..5)}" var="s0">
	  <span class="glyphicon glyphicon-star-empty"></span>
	</g:each>
</g:else>