<%@ page import="it.ggg.sa.prodotto.Linea"%>

<ul class="nav navbar-nav">
                
    <%--L'azienda--%>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">                  
          <span class="glyphicon glyphicon-home" aria-hidden="true"></span><br/>
          <g:message code="menu.azienda.label" default="L'azienda"/> 
      </a> 
      <ul class="dropdown-menu" >
         <li>
            <%--Chi siamo--%>
            <g:link controller="profilo" action="chiSiamo">
                <g:message code="menu.chisiamo.label"/>
            </g:link>
         </li>
         <li>
            <%--Contatti--%>
            <g:link controller="profilo" action="contatti">
                <g:message code="menu.contatti.label"/>
            </g:link>
         </li>                 
      </ul>
    </li>
    
    <%--Prodotti--%>
    <li class="dropdown ">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <span class="glyphicon glyphicon-cutlery" aria-hidden="true" ></span><br/>
        <g:message code="menu.prodotti.label" default="Prodotti"/> 
      </a>
      <ul class="dropdown-menu" >
        <g:each in="${Linea.list()}" var="l">
            <li>
                <g:link controller="prodotto" action="search" params="[linea: l.id, visualizzazione: visualizzazione]">
                    ${l.getNome(lang.toString())}
                </g:link>
            </li>
        </g:each>
        <li><g:link controller="prodotto" action="search" params="[visualizzazione: visualizzazione]"><g:message code="visualizzaTutti.label"/></g:link></li>                  
      </ul>
    </li>  
    
    <%--Offerte--%>              
    <li class="hidden-sm">
        <g:link controller="prodotto" action="offerte" params="[visualizzazione: visualizzazione]">                    
            <span class="glyphicon glyphicon-tags" aria-hidden="true"></span><br/>
            <g:message code="visualizzaOfferte.label"/>
        </g:link>
    </li>    
    
    <%--Cerca--%>
    <li class="hidden-sm">
        <g:form class="navbar-form navbar-right" role="search" controller="prodotto" action="search" >
            <div class="form-group" style="width: 200px;">
              <g:hiddenField name="visualizzazione" value="${visualizzazione}"/>
              <g:hiddenField name="lang" value="${lang}"/>
              <div class="input-group input-group-md">
                  <input type="text" class="form-control" placeholder="<g:message code='menu.cerca.placeholher.label' default='Cerca'/>" name="q" value="${q}" >                   
                  
                  <span class="input-group-btn">
                    <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                  </span>                     
              </div>                   
            </div>
        </g:form>
    </li>
        
    <%--Task--%>
    <sec:ifLoggedIn>
        <li>
            <g:link controller="ordine" action="tasks" >
                <g:numeroTaskUtente />
            </g:link>
        </li>
    </sec:ifLoggedIn>        
</ul>