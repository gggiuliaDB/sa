<%-- RATINGS 
<g:render template="/commento/mediaRatings" model="[mediaRatings: mediaRatings]"></g:render>
--%>
<%-- COMMENTI --%>
<div class="well rating-table">
     <div >
            
            <%--Bottone "Lascia un commento" --%>
  			<sec:ifLoggedIn>
				<button class="btn btn btn-success" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
				  <g:message code="commento.lasciaUnCommento.label" />
				</button>
			</sec:ifLoggedIn>
			
			<%--Form collassabile per inserire un commenti --%>
            <div class="collapse" id="collapseExample">
			  <div class="well">
			    <g:form controller="prodotto" action="salvaCommento" >  
			             <g:hiddenField name="prodotto.id" value="${id}"/>                  
			             <div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'commento', 'error')} ">
			                 <label for="commento">
			                     <g:message code="commento.commentoM.label" default="Commento" />                         
			                 </label>
			                 <g:textArea name="commento" cols="40" rows="5" maxlength="1024" />
			             </div>
			             
			             <div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'rating', 'error')} ">
			                 <label for="rating">
			                     <g:message code="commento.rating.label" default="Rating" />                         
			                 </label>
			                 <g:field name="rating" type="number" min="0" max="5" style="border: 1px solid gray;"/>                 
			             </div>
			             
			             <g:submitButton name="create" class="btn btn-success" value="${message(code: 'commento.salva.label') }" />
			             <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#collapseExample"><g:message code="commento.annulla.label"/></button>
			         </g:form>
			  </div>
			</div>
     </div>
     <hr>     
     
     <%--Elenco commenti --%>            
     <g:each in="${commenti}" var="commento">
        <div class="row">
	         <div class="col-md-12">
	             <g:render template="/commento/stars" model="[value: commento.rating]"></g:render>
	             ${commento.utente.username}
	             <span class="pull-right"><g:formatDate date="${commento.dateCreated}" format="dd/MM/yyyy"/></span>
	             <p>${commento.commento}</p>
	         </div>
	    </div>
        <hr>        
     </g:each>     
</div>

      
<%--        <sec:ifLoggedIn>--%>
<%--            <button type="button" class="btn btn btn-success" data-toggle="modal" data-target="#modalCommento">--%>
<%--              <g:message code="commento.lasciaUnCommento.label" />--%>
<%--            </button>--%>
<%--        </sec:ifLoggedIn>--%>
<%--        --%>
<%--        <!-- Modal -->--%>
<%--        <g:render template="/commento/modalRating"></g:render>--%>
        
