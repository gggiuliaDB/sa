<%--<g:if test="${tasks}" > --%>
<%--    <g:message code="task.daCompletare.label" args="[taskCount]"/>--%>
    <ul>
        <g:each in="${tasks}" var="t" >
            <li>
                <g:link controller="task" action="getForm" params="[taskId:t.id]">
                    ${t.description}
                </g:link>
            </li>
        </g:each>
    </ul>
<%--    
    <g:set var="action" value="listForAzienda" />
    <g:set var="controller" value="colloquio" />
    <g:if test="${user.isCandidato()}">
        <g:set var="action" value="listForCandidato" />
    </g:if>
    <g:elseif test="${user.isAdmin()}">
        <g:set var="action" value="listForAdmin" />
        <g:set var="controller" value="task" />
    </g:elseif>
    
    <g:link controller="${controller}" action="${action}"><g:message code="visualizza.attivita.label" default="Visualizza le tue attivita"/></g:link>
    
--%>
<%--</g:if>--%>
<%--<g:else>--%>
<%--    <g:message code="task.nessunaAttivita.label"/>--%>
<%--</g:else>--%>

