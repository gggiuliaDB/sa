<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'immagine', 'error')} ">
    <div class="col-sm-3">
        <label for="immagine"> 
           <g:message code="prodotto.immagine.label" default="Immagine" />
        </label>
    </div>
    <div class="col-sm-5">
      <g:if test="${prodottoInstance}">   
        <img src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:100px" class="img-rounded"/>
      </g:if>
      <input type="file" name="myFile" style="color: white;"/>
    </div>
</div>
