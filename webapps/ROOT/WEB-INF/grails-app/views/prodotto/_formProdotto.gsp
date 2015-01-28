<div class="form-group fieldcontain required">
  <div class="col-sm-3">
    <label for="nome">
        <g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
        <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-7">
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
  <div class="col-sm-7">
    <select class="form-control input-sm" id="linea" name="linea" 
        ng-model="prodotto.linea"
        ng-options="linea.label for linea in linee track by linea.value"></select>
  </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
  <div class="col-sm-3">
    <label for="tipoProdotto"> 
       <g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /> 
       <span class="required-indicator">*</span>
    </label>
  </div>
  <div class="col-sm-7">
    <select class="form-control input-sm" id="tipoProdotto" name="tipoProdotto" 
        ng-model="prodotto.tipoProdotto"
        ng-options="tipoProdotto.label for tipoProdotto in tipiProdotto track by tipoProdotto.value"></select>
  </div>
</div>


<div class="form-group fieldcontain">
  <div class="col-sm-3">
    <label for="note"> 
       <g:message code="prodotto.note.label" default="Note" /> 
    </label>
  </div>
  <div class="col-sm-7">
    <textarea ng-maxlength="1024" rows="3" class="form-control input-sm" 
       name="note"
       style="border-radius: 3px;">{{prodotto.note}}</textarea>                              
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-3">
    <label for="ingredienti"> 
       <g:message code="prodotto.ingredienti.label" default="Ingredienti" /> 
    </label>
  </div>
  <div class="col-sm-7">
    <textarea ng-maxlength="1024" rows="3" class="form-control input-sm" 
       name="ingredienti"
       style="border-radius: 3px;">{{prodotto.ingredienti}}</textarea>                              
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-3">
    <label for="comeGustarlo"> 
       <g:message code="prodotto.comeGustarlo.label" default="Come gustarlo" /> 
    </label>
  </div>
  <div class="col-sm-7">
    <textarea ng-maxlength="1024" rows="3" class="form-control input-sm" 
       name="comeGustarlo"
       style="border-radius: 3px;">{{prodotto.comeGustarlo}}</textarea>                              
  </div>
</div>

<div class="form-group fieldcontain">
  <div class="col-sm-3">
    <label for="conservazione"> 
       <g:message code="prodotto.conservazione.label" default="Conservazione" /> 
    </label>
  </div>
  <div class="col-sm-7">
    <textarea ng-maxlength="1024" rows="3" class="form-control input-sm"
       name="conservazione"
       style="border-radius: 3px;">{{prodotto.conservazione}}</textarea>                              
  </div>
</div>


<%--

 <td>
<div ng-hide="i18.editing">{{i18.note}}</div>
<div ng-show="i18.editing" class="input-group input-group-sm">
    <textarea ng-maxlength="1024" rows="3"
	   name="internazionalizzazioni[{{$index}}].note"
	   ng-model="i18.note"
	   style="border-radius: 3px;">{{i18.note}}</textarea>                              
    </div>
</td>
<td>
    <div ng-hide="i18.editing">{{i18.ingredienti}}</div>
    <div ng-show="i18.editing" class="input-group input-group-sm">
        <textarea ng-maxlength="1024" rows="3"
   name="internazionalizzazioni[{{$index}}].ingredienti"
   ng-model="i18.ingredienti"
   style="border-radius: 3px;">{{i18.ingredienti}}</textarea>                              
    </div>
</td>
<td>
    <div ng-hide="i18.editing">{{i18.comeGustarlo}}</div>
    <div ng-show="i18.editing" class="input-group input-group-sm">
        <textarea ng-maxlength="1024" rows="3"
   name="internazionalizzazioni[{{$index}}].comeGustarlo"
   ng-model="i18.comeGustarlo"
   style="border-radius: 3px;">{{i18.comeGustarlo}}</textarea>                              
    </div>
</td>
<td>
    <div ng-hide="i18.editing">{{i18.conservazione}}</div>
    <div ng-show="i18.editing" class="input-group input-group-sm">
        <textarea ng-maxlength="1024" rows="3"
   name="internazionalizzazioni[{{$index}}].conservazione"
   ng-model="i18.conservazione"
   style="border-radius: 3px;">{{i18.conservazione}}</textarea>                              
    </div>
</td>
--%>
