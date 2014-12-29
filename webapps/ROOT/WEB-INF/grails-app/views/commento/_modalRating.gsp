<div class="modal fade rating-modal" id="modalCommento" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <h4 class="modal-title" id="myModalLabel"><g:message code="commento.lasciaUnCommento.label"/> </h4>
       </div>
       <div class="modal-body">
         <g:form controller="prodotto" action="salvaCommento" >  
             <g:hiddenField name="prodotto.id" value="${id}"/>                  
             <div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'commento', 'error')} ">
                 <label for="commento">
                     <g:message code="commento.commento.label" default="Commento" />                         
                 </label>
                 <g:textArea name="commento" cols="40" rows="5" maxlength="1024" />
             </div>
             
             <div class="fieldcontain ${hasErrors(bean: commentoInstance, field: 'rating', 'error')} ">
                 <label for="rating">
                     <g:message code="commento.rating.label" default="Rating" />                         
                 </label>
                 <g:field name="rating" type="number" min="0" max="5"/>                 
             </div>
             
             <g:submitButton name="create" class="btn btn-success" value="${message(code: 'commento.salva.label') }" />
             <button type="button" class="btn btn-default" data-dismiss="modal"><g:message code="commento.chiudi.label"/></button>
         </g:form>
       </div>              
     </div>
   </div>
</div>