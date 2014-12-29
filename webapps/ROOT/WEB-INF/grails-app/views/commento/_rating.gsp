<%-- RATINGS 
<g:render template="/commento/mediaRatings" model="[mediaRatings: mediaRatings]"></g:render>
--%>
<%-- COMMENTI --%>
<div class="well rating-table">
     <div >
        <sec:ifLoggedIn>
	        <!-- Button trigger modal -->
			<button type="button" class="btn btn btn-success" data-toggle="modal" data-target="#modalCommento">
			  <g:message code="commento.lasciaUnCommento.label" />
			</button>
		</sec:ifLoggedIn>
		
		<!-- Modal -->
		<g:render template="/commento/modalRating"></g:render>
		

     </div>
     <hr>     
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
