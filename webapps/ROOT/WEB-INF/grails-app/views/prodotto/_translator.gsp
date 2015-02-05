<a data-toggle="collapse" href="#collapseExample${name}" aria-expanded="false" aria-controls="collapseExample${name}">
  Gestione traduzioni
</a>
<div class="collapse" id="collapseExample${name}">
  <div >
        <table class="table table-bordered">
          <tr>
            <th>Lingua</th>
            <th>Descrizione</th>
          </tr>  
          <g:each in="${lingue}" var="lingua">
            <tr>
                <td>${lingua.getDisplayLanguage(lingua)}</td>
                <td></td>                
            </tr>
          </g:each>
        </table>
  </div>
</div>




