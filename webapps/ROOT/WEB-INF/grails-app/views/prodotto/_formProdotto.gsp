<div class="form-group fieldcontain required">
  <div class="col-sm-2">
    <label for="nome">
        <g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
        <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <g:textField class="form-control input-sm" name="nome" required="" value="{{prodotto.nome}}"/>
    <%--<locale:translator name="nome" id="{{prodotto.id}}" />--%>
  </div>
</div>


<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
  <div class="col-sm-2">
    <label for="linea"> 
       <g:message code="prodotto.linea.label" default="Linea" /> 
       <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <select class="form-control input-sm" id="linea" name="linea" 
        ng-model="prodotto.linea"
        ng-options="linea.label for linea in linee track by linea.value"></select>
  </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
  <div class="col-sm-2">
    <label for="tipoProdotto"> 
       <g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /> 
       <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-5">
    <select class="form-control input-sm" id="tipoProdotto" name="tipoProdotto" 
        ng-model="prodotto.tipoProdotto"
        ng-options="tipoProdotto.label for tipoProdotto in tipiProdotto track by tipoProdotto.value"></select>
  </div>
</div>


<div class="form-group fieldcontain">
  <div class="col-sm-2">
    <label for="note"> 
       <g:message code="prodotto.note.label" default="Note" /> 
    </label>
  </div>
  <div class="col-sm-10">
    <textarea ng-maxlength="1024" rows="2" class="form-control input-sm" 
       name="note"
       style="border-radius: 3px;">{{prodotto.note}}</textarea>                              
    <%--<locale:translator name="note" id="{{prodotto.id}}"/>--%>
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-2">
    <label for="ingredienti"> 
       <g:message code="prodotto.ingredienti.label" default="Ingredienti" /> 
    </label>
  </div>
  <div class="col-sm-10">
    <textarea ng-maxlength="1024" rows="2" class="form-control input-sm" 
       name="ingredienti"
       style="border-radius: 3px;">{{prodotto.ingredienti}}</textarea>                              
    <%--<locale:translator name="ingredienti" id="{{prodotto.id}}"/>--%>
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-2">
    <label for="comeGustarlo"> 
       <g:message code="prodotto.comeGustarlo.label" default="Come gustarlo" /> 
    </label>
  </div>
  <div class="col-sm-10">
    <textarea ng-maxlength="1024" rows="2" class="form-control input-sm" 
       name="comeGustarlo"
       style="border-radius: 3px;">{{prodotto.comeGustarlo}}</textarea>                              
    <%--<locale:translator name="comeGustarlo" id="{{prodotto.id}}"/>--%>
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-2">
    <label for="conservazione"> 
       <g:message code="prodotto.conservazione.label" default="Conservazione" /> 
    </label>
  </div>
  <div class="col-sm-10">
    <textarea ng-maxlength="1024" rows="2" class="form-control input-sm"
       name="conservazione"
       style="border-radius: 3px;">{{prodotto.conservazione}}</textarea>                              
    <%--<locale:translator name="conservazione" id="{{prodotto.id}}"/>--%>
  </div>
</div>
