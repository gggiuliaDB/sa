<%@page import="it.ggg.sa.localization.LocaleTagLib"%>

<%--<a data-toggle="collapse" href="#collapseExample${name}" aria-expanded="false" aria-controls="collapseExample${name}">--%>
<a href="#" class="traduciBtn" id="traduci_${name}" >
    Traduzioni
</a>
<div class="collapse" id="collapse_traduci_${name}">
  <div >
        <table class="table table-bordered">
          <tr>
            <th>Lingua</th>
            <th>Descrizione</th>
          </tr>  
          <g:each in="${lingue}" var="lingua">
            <tr>
                <td>${LocaleTagLib.nomeLingua(lingua)} - ${lingua.toString()}</td>
                <td>{{cercaInternazionalizzazione(lingua.locale, "${name}")}}</td>                
            </tr>
          </g:each>
        </table>
  </div>
</div>




