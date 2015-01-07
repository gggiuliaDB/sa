<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>

<link type="text/css" href="${createLinkTo(dir:'css',file:'login.css')}" />

</head>

<body>
	<div id='login'>
		<div class='inner'>
			<div class='fheader'>
				<g:message code="springSecurity.login.header" />
			</div>

			<g:if test='${flash.message}'>
				<div class='login_message'>
					${flash.message}
				</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm'
				class='cssform' autocomplete='off'>
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

				<p>
                    <a href="<g:createLink controller="register" action="forgotPassword" />">
					   <g:message code="menu.forgotPassword.label" default="Password dimenticata?" />
				    </a>
				</p>

				<p>
					<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' />
					<g:link controller="register">
						<g:message code='menu.register.label'></g:message>
					</g:link>
				</p>
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
