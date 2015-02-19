<g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
                <g:if test="${!lang}">
                    <g:set var="lang" value="it"/>
                </g:if> 
                
                <g:if test="${ordini}" > 
                  <table class="table ">
                    <thead>       
                        <tr>
                           <g:sortableColumn property="id" title="${message(code: 'ordine.id.column', default: 'id')}" style="text-align: right;"/>
                           <g:sortableColumn property="dateCreated" title="${message(code: 'ordine.data_creazione.column', default: 'data_creazione')}" />
                           <g:sortableColumn property="statoPagamento" title="${message(code: 'ordine.statoPagamento.column', default: 'statoPagamento')}" />
                           <th style="text-align: left;" ><g:message code="ordine.utente.column"/></th>
                           <th style="text-align: right;"><g:message code="ordine.totale.column"/></th>
                           <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${ordini}" var="ordine" >
                            <tr>
                                <td style="text-align: right;">${ordine.id}</td>
                                <td style="text-align: left;" ><g:formatDate date="${ordine.dateCreated}" format="dd/MM/yyyy"/></td>
                                <td style="text-align: left;" >${ordine.statoPagamento.toString(lang)}</td>
                                <td style="text-align: left;" >${ordine.utente.username}</td>
                                <td style="text-align: right;">
                                    &euro; <g:formatNumber number="${ordine.calcolaTotale()}" type="currency" currencyCode="EUR" currencySymbol=""/>                
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <a href="#" data-toggle="modal" data-target="#modal${ordine.id}">
                                      <g:message code="ordine.dettaglio.button"/>
                                    </a>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="modal${ordine.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                      <div class="modal-dialog  modal-lg">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Ordine ${ordine.id}</h4>
                                          </div>
                                          <div class="modal-body">
                                            <g:render template="/ordine/riepilogo" model="[ordine: ordine]"/>
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal"><g:message code="commento.chiudi.label"/></button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                </td>                               
                            </tr>
                        </g:each>
                    </tbody>
                  </table>
                  <div class="pagination">
                    <g:paginate total="${ordiniCount ?: 0}" />
                  </div>
                </g:if>
                <g:else>
                    <g:message code="ordini.nessun.ordine.label"/>
                </g:else>
                