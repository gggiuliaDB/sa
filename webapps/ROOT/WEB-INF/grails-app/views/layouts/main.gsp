<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

        <r:require module="jquery"/>
        <r:require module="bootstrap"/>
        <r:require module="core"/>
        
        <g:layoutHead/>
        <g:javascript library="application"/>
        <r:layoutResources />
        
    </head>
    <body >
        
        
        <%--LANG--%>
        <g:set var="lang" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
        <g:if test="${!lang}">
            <g:set var="lang" value="it"/>
        </g:if>    
    
	    <!-- Fixed navbar -->
	    <!-- Navigation -->    
	    <g:render template="/layouts/menu" />
	
	    <!-- Begin page content -->
	    <div class="container">
	        <!-- Contenuto della pagina -->    
	        <g:layoutBody/>
	    </div>
	
	    <footer class="footer">
	      <div class="container">
            <hr>
	        <div class="row">
	            <div class="col-lg-12">
	              <sec:ifLoggedIn>
	                <p>Sarda Affumicati s.r.l.- Loc. Sa Colombera- 09010 Buggerru (CI) P.I. 01853450920</p>
	              </sec:ifLoggedIn>
	            </div>
	        </div>
	      </div>
	    </footer>
	                
    </body>
</html>
