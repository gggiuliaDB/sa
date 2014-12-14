<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><g:layoutTitle default='User Registration'/></title>

<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon"/>


        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'sa.css')}" type="text/css">
        <r:require module="bootstrap"/>
        <r:require module="jquery"/>
        
        <g:layoutHead/>
        <g:javascript library="application"/>
        <s2ui:resources module='register' />


</head>

<body>
<!-- Navigation -->    
<g:render template="/layouts/menu" />   

<br>
<br>
<br>
<br>
<br>
<g:layoutBody/>
<s2ui:layoutResources module='register' />

<s2ui:showFlash/>
        <!-- Footer -->
        <div class="container">
            <hr>
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; GGG 2014</p>
                    </div>
                </div>
            </footer>
        </div>
        <!-- /.container -->
        <r:layoutResources />
        

</body>
</html>
