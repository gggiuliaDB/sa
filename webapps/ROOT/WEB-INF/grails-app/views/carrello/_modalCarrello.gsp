<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
     <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel"><g:message code="menu.carrello.label"/> </h4>
	      </div>
	      <div class="modal-body">
	        <g:render template="/carrello/carrelloTable" ></g:render>
	      
	        <button type="button" class="btn btn-default" data-dismiss="modal"><g:message code="button.continuaShopping.label" /></button>
	        <g:link controller="carrello" action="show" id="${carrelloInstance.id}" class="btn btn-success" ><g:message code="button.vaiACarrello.label" /></g:link>
	      </div>
     </div>
   </div>
</div>        