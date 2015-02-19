<!-- Navigation navbar-fixed-top-->
<nav class="navbar navbar-inverse " role="navigation" style="text-align: center;">

    <div class="container-fluid" >
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
                        
            <%--LOGO SA --%>
            <g:seProductionMode>                
                <g:link class="navbar-brand" controller="prodotto" >
                    <g:img file="saLogo.jpg" class="img-rounded" style="height: 43px;"/>
                </g:link>
            </g:seProductionMode>
            <g:seTestMode>
                <sec:ifLoggedIn>
                    <g:link class="navbar-brand" controller="prodotto" >
                    <g:img file="saLogo.jpg" class="img-rounded" style="height: 43px;"/>
                </g:link>
                </sec:ifLoggedIn>
            </g:seTestMode>
        </div>
        

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          
          
          <%--MENU PARTE PUBBLICA--%>
          <g:seProductionMode>
                <g:render template="/layouts/publicMenu"></g:render>                
          </g:seProductionMode>
          <g:seTestMode>
                <sec:ifLoggedIn>
                    <g:render template="/layouts/publicMenu"></g:render>                
                </sec:ifLoggedIn>
          </g:seTestMode>
          
          <ul class="nav navbar-nav navbar-right">
                
                <%--Cambia lingua--%>
                <li class="dropdown hidden-sm">
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
                               <g:message code="impostazioni.label"/>
                          </a>
                          <ul class="dropdown-menu">
                          <li><a href="<g:createLink controller="prodotto" action="listino" />" >Gestione listino</a></li>
	                        <li><a href="<g:createLink controller="prodotto" action="list" />" >Gestione prodotti</a></li>
	                        <li><a href="<g:createLink controller="user"  />">Gestione utenti</a></li>
	                      </ul>
	                    </li>
	                    
	                    <%--Storico ordini--%>
                        <li>
                            <g:link controller='ordine' action='listForAdmin'>
                                <span class="glyphicon glyphicon-list-alt"></span><br/>
                                <g:message code="ordini.listForAdmin.label" />
                            </g:link>
                        </li>	                                                  
                    </sec:access>
                
                    <%--Voci per utente normale--%>
                    <sec:access expression="hasRole('ROLE_USER')">
                        <%--Storico ordini--%>
                        <li>
                            <g:link controller='ordine' action='listForUser'>
                                <span class="glyphicon glyphicon-list-alt"></span><br/>
                                <g:message code="ordini.listForUser.label" />
                            </g:link>
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


