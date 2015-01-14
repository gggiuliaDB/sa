<%@ page import="it.ggg.sa.prodotto.Confezione" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'confezione.label', default: 'Confezione')}" />
        <title><g:message code="listino.gestione.title" default="Gestione listino"/></title>
        <r:require module="listino"/>
    </head>
    <body>
      <div class="container" >
        
        <div id="list-confezione" class="content scaffold-list" role="main">
            <h1><g:message code="listino.gestione.title" default="Gestione listino"/></h1>
          
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
         
           <div id="listinoApp" >
              <div id="listinoController" 
                ng-controller="listinoController" 
                ng-init="init('<g:createLink  uri=""/>',${confezioneInstanceList})">
         
                <div  ng-show="error_message" class="alert alert-warning">{{error_message}}</div>
		       
                <table class="table table-condensed">
		          <thead>       
		            <tr>
			            <th>Prodotto</th>
			            <th>Confezione</th>
			            <%--<th style="text-align: center;" colspan="2">Peso</th>--%>
			            <th style="text-align: right; width: 100px;">Prezzo</th>
			            <th style="text-align: right; width: 100px;">Sconto</th>
                        <th style="text-align: center; width: 140px;"></th>                        
		            </tr>
		          </thead>
		          <tbody>
		            <tr ng-repeat="confezione in confezioni">
		            
		                <td>{{confezione.prodotto}}</td>
		                <td>{{confezione.nome}}</td>
		                <%--<td style="text-align: right;">{{confezione.peso}}</td>
		                <td>{{confezione.unitaMisura}}</td>
		                --%>
		                <td style="text-align: right;" >
		                    <div ng-hide="confezione.editing">{{confezione.prezzo | currency:"€"}} {{confezione.unitaMisura}}</div>
		                    <div ng-show="confezione.editing" class="input-group input-group-sm">
		                      <input class="form-control" style="text-align: right; font-size: small;" type="text"
                                    aria-describedby="basic-addon-euro"  
                                    value="{{confezione.prezzo}}"  
                                    ng-model="confezione.prezzo"
                                    only-decimal 
                                    coma-dot-converter="coma-dot-converter" >
                              <span class="input-group-addon" id="basic-addon-euro">&euro;</span>                              
                            </div>
		                </td>
		                <td style="text-align: right;">
		                    <div ng-hide="confezione.editing">{{confezione.sconto}}<div style="display: inline;" ng-show="confezione.sconto">%</div></div>
		                    
		                    <div ng-show="confezione.editing" class="input-group input-group-sm">
		                      <input class="form-control" style="text-align: right; font-size: small;" type="text"
                                    aria-describedby="basic-addon-perc"  
                                    value="{{confezione.sconto}}"  
                                    ng-model="confezione.sconto" 
                                    only-decimal 
                                    coma-dot-converter="coma-dot-converter" >
                              <span class="input-group-addon" id="basic-addon-perc">%</span>                                    
                            </div>
		                </td>
		                <td>
		                    <div ng-hide="confezione.editing">
		                        <a href="#" ng-click="edit(confezione)">Modifica</a>
		                    </div>
		                    <div ng-show="confezione.editing">
		                        <%--<input type="submit" class="btn btn-link" value="Salva" ng-click="update()"/>--%>
		                        <a href="#" ng-click="update()">Salva</a> |
		                        <a href="#" ng-click="cancel()">Annulla</a>
		                    </div>                    
		                </td>
		            </tr>
		          </tbody>
		        </table>        
        
                <%--  
	            <table class="table table-hover table-condensed">
	            <thead>
	                    <tr>
	                        <th>Prodotto</th>
	                        <th>Confezione</th>
	                        <th style="text-align: center;" colspan="2">Peso</th>
	                        <th style="text-align: right;">Prezzo</th>
	                        <th style="text-align: right;">Sconto</th>
	                        <th></th>
	                    </tr>
	                </thead>
	                <tbody>
	                <g:each in="${confezioneInstanceList}" status="i" var="confezioneInstance">
	                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
	                        <td>${confezioneInstance.prodotto}</td>
	                        <td>${confezioneInstance}</td>
	                        <td style="text-align: right;">${fieldValue(bean: confezioneInstance, field: "peso")}</td>
	                        <td>${fieldValue(bean: confezioneInstance, field: "unitaMisura")}</td>
	                        <td style="text-align: right;">&euro; <g:formatNumber number="${confezioneInstance.prezzo}" type="currency" currencyCode="EUR" currencySymbol=""/></td>
	                        <td style="text-align: right;">${fieldValue(bean: confezioneInstance, field: "sconto")}</td>
	                        <td><g:link >Modifica</g:link></td>
	                    </tr>
	                </g:each>
	                </tbody>
	            </table>
	             --%> 
	            <div class="pagination" id="paginazione">
	                <g:paginate total="${confezioneInstanceCount ?: 0}" />
	            </div>
	                 
            </div>
          </div>
        </div>
      </div>
    </body>
</html>
