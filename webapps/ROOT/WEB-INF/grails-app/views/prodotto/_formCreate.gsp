<%@ page import="it.ggg.sa.prodotto.Prodotto"%>
<r:require module="prodotto"/>
<div id="prodottoApp" >
    <div id="prodottoController" >
		
		<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
            <div class="col-sm-3">
                <label for="linea"> 
	               <g:message code="prodotto.linea.label" default="Linea" /> <span class="required-indicator">*</span>
	            </label>
            </div>
            <div class="col-sm-5">
	            <g:select class="form-control input-sm" id="linea" name="linea.id"
	                from="${it.ggg.sa.prodotto.Linea.list()}" optionKey="id" required=""
	                value="${prodottoInstance?.linea?.id}" />
             </div>
        </div>
        
        <div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
            <div class="col-sm-3">
                <label for="tipoProdotto"> 
	               <g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /> <span class="required-indicator">*</span>
	            </label>
            </div>
            <div class="col-sm-5">
	            <g:select class="form-control input-sm" id="tipoProdotto" name="tipoProdotto.id"
	                from="${it.ggg.sa.prodotto.TipoProdotto.list()}" optionKey="id"
	                required="" value="${prodottoInstance?.tipoProdotto?.id}"/>
            </div>
        </div>
        
    </div>
</div>