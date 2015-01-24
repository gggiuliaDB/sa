<div class="form-group fieldcontain required">
  <div class="col-sm-3">
    <label for="nome">
        <g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
        <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <g:textField class="form-control input-sm" name="nome" required="" value="{{prodotto.nome}}"/>
  </div>
</div>


<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
  <div class="col-sm-3">
    <label for="linea"> 
       <g:message code="prodotto.linea.label" default="Linea" /> 
       <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <select class="form-control input-sm" id="linea" name="linea.id" 
        ng-model="prodotto.linea"
        ng-options="linea as linea.label for linea in linee"></select>
  </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
  <div class="col-sm-3">
    <label for="tipoProdotto"> 
       <g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /> 
       <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <select class="form-control input-sm" id="tipoProdotto" name="tipoProdotto.id" 
        ng-model="prodotto.tipoProdotto"
        ng-options="tipoProdotto as tipoProdotto.label for tipoProdotto in tipiProdotto"></select>

  </div>
</div>