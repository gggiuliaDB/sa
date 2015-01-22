<%@ page import="it.ggg.sa.prodotto.Linea"%>

<!-- Navigation navbar-fixed-top-->
<nav class="navbar navbar-inverse " role="navigation" style="text-align: center;">

    <div class="container" >
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <sec:ifLoggedIn>
                <g:link class="navbar-brand" controller="prodotto" >
                    <g:img file="saLogo.jpg" class="img-rounded" style="height: 43px;"/>
                </g:link>
            </sec:ifLoggedIn>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <sec:ifLoggedIn>
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
                <li class="dropdown">
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
                    <%--<li><g:link controller="prodotto" action="offerte" params="[visualizzazione: visualizzazione]"><g:message code="visualizzaOfferte.label"/></g:link></li>--%><%--<span class="glyphicon glyphicon-tags"></span>--%>
                  </ul>
                </li>  
                
                <%--Offerte--%>              
                <li>
                    <g:link controller="prodotto" action="offerte" params="[visualizzazione: visualizzazione]">                    
                        <span class="glyphicon glyphicon-tags" aria-hidden="true"></span><br/>
                        <g:message code="visualizzaOfferte.label"/>
                    </g:link>
                </li>        
                
                <%--Task--%>
                <li>
                    <g:link controller="ordine" action="tasks" >
                        <g:numeroTaskUtente />
                    </g:link>
                </li>
                
                <li>
                    <%--Cerca--%>
		            <g:form class="navbar-form navbar-right" role="search" controller="prodotto" action="search" >
		                <div class="form-group">
		                  <g:hiddenField name="visualizzazione" value="${visualizzazione}"/>
		                  <g:hiddenField name="lang" value="${lang}"/>
		                  <div class="input-group input-group-md">
		                      <input type="text" class="form-control" placeholder="<g:message code='menu.cerca.placeholher.label' default='Cerca'/>" name="q" value="${q}" style="width: 150px;">                   
		                      
		                      <span class="input-group-btn">
		                        <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-search"></span></button>
		                      </span>                     
		                  </div>                   
		                </div>
		            </g:form>
                </li>        
            </ul>
          </sec:ifLoggedIn>
          
          <ul class="nav navbar-nav navbar-right">
                
                <%--Cambia lingua--%>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <locale:flag/> 
                  </a>                  
                  <locale:selector/>                  
                </li> 
                
                <sec:ifNotLoggedIn>
                   <%--Login (solo se non loggati)--%>
                   <li><g:link controller='login' action='auth'><g:message code="menu.login.label" /></g:link></li>

                   <%--Registrazione (solo se non loggati)--%>
                   <li><g:link controller='register' ><g:message code="menu.register.label" /></g:link></li>
                </sec:ifNotLoggedIn>

                <sec:ifLoggedIn>
                    <%--Voci per admin--%>
                    <sec:access expression="hasRole('ROLE_ADMIN')">
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                               <span class="glyphicon glyphicon-cog"></span><br/>
                               Impostazioni
                          </a>
                          <ul class="dropdown-menu">
                          <li><a href="<g:createLink controller="prodotto" action="listino" />" >Gestione listino</a></li>
	                        <li><a href="<g:createLink controller="prodotto" action="list" />" >Gestione prodotti</a></li>
	                        <li><a href="<g:createLink controller="user"  />">Gestione utenti</a></li>
	                      </ul>
	                    </li>                              
                    </sec:access>
                
                    <%--Carrello--%>
                    <li>
                        <g:carrelloIcon/>
                    </li>
                
                    <%--Cambio pwd e logout (solo per loggati)--%>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span><br/>
                        <sec:username/>
                      </a>
                      <ul class="dropdown-menu">
                        <li><a href="<g:createLink controller="user" action="cambioPassword" />" ><g:message code="menu.cambiaPassword.label" default="Cambia password"/></a></li>
                        <li><a href="<g:createLink controller="logout" />"><g:message code="menu.logout.label" default="Logout"/></a></li>
                      </ul>
                    </li>
                </sec:ifLoggedIn>
          </ul>
          
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


