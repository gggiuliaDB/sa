<%@ page import="it.ggg.sa.prodotto.Linea"%>

<!-- Navigation -->
<%-- <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" >--%>
<nav class="navbar navbar-inverse navbar-default" role="navigation" >
    <%-- style="background-color: #023261"#76AF8C--%>
    <div class="container" >
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%--<a class="navbar-brand" href="#"><g:message code="site.title"/></a>--%>
            <sec:ifLoggedIn>
                <g:link class="navbar-brand" controller="prodotto" >
                    <g:img file="saLogo.jpg" class="img-rounded" style="height: 43px;"/>
                    <%--<g:message code="site.title"/>--%>
                </g:link>
            </sec:ifLoggedIn>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <sec:ifLoggedIn>
            <ul class="nav navbar-nav">
                
                <li>
                    <g:link controller="prodotto" >                    
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    </g:link>
                </li>
                       
            
                <%--Prodotti--%>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><g:message code="menu.prodotti.label" default="Prodotti"/> <span class="caret"></span></a>
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
                <%--Chi siamo--%>
                <li>
                    <g:link controller="profilo" action="chiSiamo">
                        <g:message code="menu.chisiamo.label"/>
                    </g:link>
                </li>
                <%--Contatti--%>
                <li>
                    <g:link controller="profilo" action="contatti">
                        <g:message code="menu.contatti.label"/>
                    </g:link>
                </li>
            </ul>
            <%--Cerca--%>
            <g:form class="navbar-form navbar-left" role="search" controller="prodotto" action="search" >
                <div class="form-group">
                  <g:hiddenField name="visualizzazione" value="${visualizzazione}"/>
                  <div class="input-group input-group-md">
	                  <input type="text" class="form-control" placeholder="<g:message code='menu.cerca.placeholher.label' default='Cerca'/>" name="q" value="${q}">	                  
	                  
	                  <span class="input-group-btn">
				        <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-search"></span></button>
				      </span>	                  
                  </div>                   
                </div>
            </g:form>
            
            <%--Task--%>
            <ul class="nav navbar-nav">
                <li>
                    <g:link controller="ordine" action="tasks" >
                        <g:numeroTaskUtente />
                    </g:link>
                </li>
            </ul>
          </sec:ifLoggedIn>
          
          
          <ul class="nav navbar-nav navbar-right">
                
                <%--Cambia lingua--%>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <locale:flag/> 
                    <span class="caret"></span>
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
                    <li>
                        <g:carrelloIcon/>
                        <%--<g:link controller="carrello" >
                            <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                        </g:link>--%>
                    </li>
                    
                
                    <%--Cambio pwd e logout (solo per loggati)--%>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><sec:username/><b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li><a href="<g:createLink controller="user" action="cambioPassword" />" ><g:message code="menu.cambiaPassword.label" default="Cambia password"/></a></li>
                        <%--<li><a href="<g:createLink controller="logout" />"><g:message code="menu.logout.label" default="Logout"/></a></li>--%>
                        <li><a href="<g:createLink uri="" />/j_spring_security_logout"><g:message code="menu.logout.label" default="Logout"/></a></li>
                      </ul>
                    </li>
                </sec:ifLoggedIn>
          </ul>
          <%--
            <form class="navbar-form navbar-right" role="login">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="email">
                  <input type="password" class="form-control" placeholder="password">
                </div>
                <button type="submit" class="btn btn-default">Login</button>
          </form> --%>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


