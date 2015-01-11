<br/>

        <div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'internazionalizzazioni', 'error')} ">
            <div class="col-sm-3">
                <label for="internazionalizzazioni"> 
                   <g:message code="prodotto.internazionalizzazioni.label" default="Internazionalizzazioni" />
                </label>
            </div>      
            <div class="col-sm-5">
                <ul class="one-to-many">
                    <g:each in="${prodottoInstance?.internazionalizzazioni?}" var="i">
                        <li><g:link controller="internazionalizzazioneProdotto" action="show" id="${i.id}">
                                ${i?.encodeAsHTML()}
                            </g:link>
                        </li>
                    </g:each>
                    <li class="add">
                       <g:link controller="internazionalizzazioneProdotto" action="create" params="['prodotto.id': prodottoInstance?.id]">
                            ${message(code: 'default.add.label', args: [message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')])}
                       </g:link>
                    </li>
                </ul>
            </div>
        </div>
        