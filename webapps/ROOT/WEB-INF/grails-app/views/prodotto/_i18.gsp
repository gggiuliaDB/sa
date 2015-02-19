<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>

<%--<button type="button" class="btn btn-default"  data-toggle="modal" data-target="#myModal">--%>
<%--  Launch demo modal--%>
<%--</button>--%>


<a href="#" id="{{prodotto.id}}" class="btn btn-default i18Btn">
    Gestione i18                                           
</a>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      
        prodotto: {{prodotto.id}}
        <g:form action="saveI18" >
                <g:hiddenField name="idProdotto" value="{{prodotto.id}}"/>
                <%--<table class="table">
                    <thead>
                        <tr>
                            <td width="10%"></td>
                            <td width="20%"><h4>Italiano</h4></td>
                            <td width="20%"><h4>Inglese</h4></td>
                            <td width="20%"><h4>Francese</h4></td>
                            <td width="20%"><h4>Giapponese</h4></td>                    
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                           <td><h4>Nome</h4></td>
                           <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.nome}</td>
                           <td><g:textField class="form-control input-sm" name="nome.en" value="${prodotto.internazionalizzazioni.find{it.locale=='en'}?.nome}"/></td>
                           <td><g:textField class="form-control input-sm" name="nome.fr" value="${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.nome}"/></td>
                           <td><g:textField class="form-control input-sm" name="nome.ja" value="${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.nome}"/></td>
                        </tr>
                        <tr>
                           <td>Descrizione</td>
                           <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.note}</td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="note.en" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='en'}?.note}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="note.fr" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.note}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="note.ja" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.note}</textarea></td>
                        </tr>
                        <tr>
                           <td>Ingredienti</td>
                           <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.ingredienti}</td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="ingredienti.en" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='en'}?.ingredienti}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="ingredienti.fr" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.ingredienti}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="ingredienti.ja" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.ingredienti}</textarea></td>
                        </tr>
                        <tr>
                           <td>Come gustarlo</td>
                           <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.comeGustarlo}</td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="comeGustarlo.en" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='en'}?.comeGustarlo}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="comeGustarlo.fr" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.comeGustarlo}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="comeGustarlo.ja" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.comeGustarlo}</textarea></td>
                        </tr>
                        <tr>
                           <td>Conservazione</td>
                           <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.conservazione}</td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="conservazione.en" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='en'}?.conservazione}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="conservazione.fr" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.conservazione}</textarea></td>
                           <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="conservazione.ja" style="border-radius: 3px;">${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.conservazione}</textarea></td>
                        </tr>
                        
                        <g:each in="${prodotto.confezioni}" var="confezione">
                            <tr>
                               <td>Confezione</td>
                               <td>${confezione.internazionalizzazioni.find{it.locale=='it'}?.descrizione}</td>
                               <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="confezione_${confezione.id}.en" style="border-radius: 3px;">${confezione.internazionalizzazioni.find{it.locale=='en'}?.descrizione}</textarea></td>
                               <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="confezione_${confezione.id}.fr" style="border-radius: 3px;">${confezione.internazionalizzazioni.find{it.locale=='fr'}?.descrizione}</textarea></td>
                               <td><textarea ng-maxlength="1024" rows="7" class="form-control input-sm" name="confezione_${confezione.id}.ja" style="border-radius: 3px;">${confezione.internazionalizzazioni.find{it.locale=='ja'}?.descrizione}</textarea></td>
                            </tr>
                        </g:each>
                        
                    </tbody>
                </table>--%>
                <g:submitButton  name="save" class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
                <g:link controller="prodotto" action="list" class="btn btn-warning" href="#">Annulla</g:link>                                                            
            </g:form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>