<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>

<%--<link type="text/css" href="${createLinkTo(dir:'css',file:'login.css')}" />--%>
<%--<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'login.css')}" />--%>
<style type='text/css' media='screen'>
#login {
    margin: 15px 0px;
    padding: 0px;
    text-align: center;
}

#login .inner {
    width: 340px;
    padding-bottom: 6px;
    margin: 60px auto;
    text-align: left;
    border: 1px solid #aab;
    background-color: #f0f0fa;
    -moz-box-shadow: 2px 2px 2px #eee;
    <%-- -webkit-box-shadow: 2px 2px 2px #eee; 
    -khtml-box-shadow: 2px 2px 2px #eee;
    box-shadow: 2px 2px 2px #eee;--%>
}

#login .inner .fheader {
    padding: 18px 26px 14px 26px;
    background-color: #f7f7ff;
    margin: 0px 0 14px 0;
    color: #2e3741;
    font-size: 18px;
    font-weight: bold;
}

#login .inner .cssform p {
    clear: left;
    margin: 0;
    padding: 4px 0 3px 0;
    padding-left: 105px;
    margin-bottom: 20px;
    height: 1%;
}

#login .inner .cssform input[type='text'] {
    width: 120px;
}

#login .inner .cssform label {
    font-weight: bold;
    float: left;
    text-align: right;
    margin-left: -105px;
    width: 110px;
    padding-top: 3px;
    padding-right: 10px;
}

#login #remember_me_holder {
    padding-left: 120px;
}

#login #submit {
    margin-left: 15px;
}

#login #remember_me_holder label {
    float: none;
    margin-left: 0;
    text-align: left;
    width: 200px
}

#login .inner .login_message {
    padding: 6px 25px 20px 25px;
    color: #c33;
}

#login .inner .text_ {
    width: 120px;
}

#login .inner .chk {
    height: 12px;
}
</style>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-60730161-1', 'auto');
  ga('send', 'pageview');
</script>

</head>

<body>
	<div id="login">
		<div class="inner">
			<div class='fheader'>
                <g:message code="springSecurity.login.header" />
            </div>

            <g:if test='${flash.message}'>
                <div class='login_message'>
                    ${flash.message}
                </div>
            </g:if>
            
            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <p>
                    <label for='username'><g:message code="springSecurity.login.username.label" />:</label> 
                    <input type='text' class='text_' name='j_username' id='username' />
                </p>
                <p>
                    <label for='password'><g:message code="springSecurity.login.password.label" />:</label> 
                    <input type='password' class='text_' name='j_password' id='password' />
                </p>
                <p id="remember_me_holder">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                        <g:if test='${hasCookie}'>checked='checked'</g:if> /> 
                    <label for='remember_me'><g:message code="springSecurity.login.remember.me.label" /></label>
                </p>
                <div style="text-align: center;">
                    <a href="<g:createLink controller="register" action="forgotPassword" />"><g:message code="menu.forgotPassword.label" default="Password dimenticata?" /></a>                    
                    <br/>
                    <br/>    
                    <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn btn-success"/>
                    <g:link controller="register" class="btn btn-info">
                        <g:message code='menu.register.label'></g:message>
                    </g:link>
                </div>
                
                
            </form>
		</div>
	</div>
	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>
