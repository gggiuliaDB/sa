<div class="collapse" id="collapseProdotto">
    <div class="well1">
    
        <h2>{{titolo}}</h2>
        <g:uploadForm url="[resource:prodottoInstance, action:'update']"  class="form-horizontal">
            <g:hiddenField name="prodottoId" value="{{prodotto.id}}"/>
            <fieldset class="form">
                <g:render template="formProdotto"/>                     
                <g:render template="formImmagine"/>
                   <g:render template="formConfezioni"/>    
            </fieldset>
            <fieldset class="buttons">
                 
                <%--<g:render template="i18"></g:render>--%>      
            
                <g:link class="btn btn-default" controller="internazionalizzazioneProdotto" action="listForProdotto" id="{{prodotto.id}}">
                        Gestione traduzioni
                   </g:link><br/><br/>
                <g:submitButton id="salvaProdotto" name="save" class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
                <a id="annulla" class="btn btn-warning" href="#">Annulla</a>                                                            
            </fieldset>
        </g:uploadForm>                 
    </div>
</div>
