
<%@ page import="it.ggg.sa.prodotto.InternazionalizzazioneProdotto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'internazionalizzazioneProdotto.label', default: 'InternazionalizzazioneProdotto')}" />
        <title>Internazionalizzazione prodotto</title>
    </head>
    <body>
      <div class="container" >
        
        <div id="list-internazionalizzazioneProdotto" class="content scaffold-list" role="main">
            <h2>Internazionalizzazione prodotto</h2>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:form action="saveI18" >
                <g:hiddenField name="idProdotto" value="${prodotto.id}"/>
	            <table class="table">
	                <thead>
	                    <tr>
	                        <td></td>
	                        <td>Italiano</td>
	                        <td>Inglese</td>
	                        <td>Francese</td>
	                        <td>Giapponese</td>                    
	                    </tr>
	                </thead>
	                <tbody>
	                    <tr>
	                       <td>Nome prodotto</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.nome}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='en'}?.nome}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.nome}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.nome}</td>                       
	                    </tr>
	                    <tr>
	                       <td>Descrizione</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.note}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='en'}?.note}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.note}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.note}</td>                       
	                    </tr>
	                    <tr>
	                       <td>Ingredienti</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.ingredienti}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='en'}?.ingredienti}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.ingredienti}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.ingredienti}</td>                       
	                    </tr>
	                    <tr>
	                       <td>Come gustarlo</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.comeGustarlo}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='en'}?.comeGustarlo}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.comeGustarlo}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.comeGustarlo}</td>                       
	                    </tr>
	                    <tr>
	                       <td>Conservazione</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='it'}?.conservazione}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='en'}?.conservazione}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='fr'}?.conservazione}</td>
	                       <td>${prodotto.internazionalizzazioni.find{it.locale=='ja'}?.conservazione}</td>                       
	                    </tr>
	                    
	                    <g:each in="${prodotto.confezioni}" var="confezione">
		                    <tr>
		                       <td>Confezione</td>
		                       <td>${confezione.internazionalizzazioni.find{it.locale=='it'}?.descrizione}</td>
		                       <td>${confezione.internazionalizzazioni.find{it.locale=='en'}?.descrizione}</td>
		                       <td>${confezione.internazionalizzazioni.find{it.locale=='fr'}?.descrizione}</td>
		                       <td>${confezione.internazionalizzazioni.find{it.locale=='ja'}?.descrizione}</td>                       
		                    </tr>
	                    </g:each>
	                    
	                </tbody>
	            </table>
	            <g:submitButton  name="save" class="btn btn-success" value="${message(code: 'default.button.save.label', default: 'Salva')}" />
	            <g:link controller="prodotto" action="list" class="btn btn-warning" href="#">Annulla</g:link>                                                            
            </g:form>
        </div>
      </div>
    </body>
</html>
