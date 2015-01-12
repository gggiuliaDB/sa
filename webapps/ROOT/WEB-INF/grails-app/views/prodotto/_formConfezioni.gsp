<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'confezioni', 'error')} ">
    <div class="col-sm-3">
        <label for="confezioni"> 
           <g:message code="prodotto.confezioni.label" default="Confezioni" />
        </label>
    </div>
    <div class="col-sm-5">
        <ul class="one-to-many">
            <g:each in="${prodottoInstance?.confezioni?}" var="c">
                <li><g:link controller="confezione" action="show" id="${c.id}">
                        ${c?.encodeAsHTML()}
                    </g:link>
                </li>
            </g:each>
            <li class="add">
                <g:link controller="confezione" action="create" params="['prodotto.id': prodottoInstance?.id]">
                    ${message(code: 'default.add.label', args: [message(code: 'confezione.label', default: 'Confezione')])}
                </g:link>
            </li>
        </ul>
    </div>
</div>
