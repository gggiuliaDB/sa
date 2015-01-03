<ul>
     <g:each in="${tasks}" var="t" >
         <li>
         
            <g:if test="${t.description.startsWith('Controllo')}">
	            <g:link controller="ordine" action="controlloDisponibilita" params="[taskId:t.id]">
	                 ${t.description}
	            </g:link>
            </g:if>
            <g:else>
                <g:link controller="ordine" action="confermaOrdine" params="[taskId:t.id]">
                     ${t.description}
                </g:link>
            </g:else>
            
                        
            <%--<g:link controller="task" action="getForm" params="[taskId:t.id]">
                 ${t.description}
            </g:link>--%>
         </li>
     </g:each>
 </ul>

