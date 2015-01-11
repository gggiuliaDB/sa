<%@ page import="it.ggg.sa.prodotto.Prodotto"%>

		
		<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'immagine', 'error')} ">
			<div class="col-sm-3">
                <label for="immagine"> 
				   <g:message code="prodotto.immagine.label" default="Immagine" />
				</label>
			</div>
			<div class="col-sm-5">
              <img src="${createLink(controller:'prodotto', action:'viewImage', id: prodottoInstance.id)}"  style="width:100px" class="img-rounded"/></td>
            </div>
		</div>
		
		<div class="form-group fieldcontain required">
		    <div class="col-sm-3">
		        <label for="nome">
		            <g:message code="internazionalizzazioneProdotto.nome.label" default="Nome" />
		            <span class="required-indicator">*</span>
		        </label>
		    </div>
		    <div class="col-sm-5">
		        <g:textField class="form-control input-sm" name="nome" required="" value="${prodottoInstance}"/>
		    </div>
		</div>
		
		
		<div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'linea', 'error')} required">
            <div class="col-sm-3">
                <label for="linea"> 
	               <g:message code="prodotto.linea.label" default="Linea" /> <span class="required-indicator">*</span>
	            </label>
            </div>
            <div class="col-sm-5">
	            <g:select class="form-control input-sm" id="linea" name="linea.id"
	                from="${it.ggg.sa.prodotto.Linea.list()}" optionKey="id" required=""
	                value="${prodottoInstance?.linea?.id}" />
             </div>
        </div>
        
        <div class="form-group fieldcontain ${hasErrors(bean: prodottoInstance, field: 'tipoProdotto', 'error')} required">
            <div class="col-sm-3">
                <label for="tipoProdotto"> 
	               <g:message code="prodotto.tipoProdotto.label" default="Tipo Prodotto" /> <span class="required-indicator">*</span>
	            </label>
            </div>
            <div class="col-sm-5">
	            <g:select class="form-control input-sm" id="tipoProdotto" name="tipoProdotto.id"
	                from="${it.ggg.sa.prodotto.TipoProdotto.list()}" optionKey="id"
	                required="" value="${prodottoInstance?.tipoProdotto?.id}"/>
            </div>
        </div>
        
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
		
