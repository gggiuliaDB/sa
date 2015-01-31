
<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'immagine', 'error')} ">
  <div class="col-sm-2">
    <label for="immagine"> 
        <g:message code="prodotto.immagine.label" default="Immagine" />
    </label>
  </div>
  <div class="col-sm-5">
    <div ng-if="nuovo==false">
        <img ng-src="{{url}}/prodotto/viewImage/{{prodotto.id}}" style="width:100px" class="img-rounded"/>
    </div>
    <input type="file" name="myFile" style="color: white;"/>
  </div>
</div>
