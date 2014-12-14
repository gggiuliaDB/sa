def ENV_NAME = "SA_CONFIG_PATH"
if (!grails.config.locations || !(grails.config.locations instanceof List)) {
    grails.config.locations = []
}
def configFiles = [
    "${appName}-datasource-config.groovy",
    "${appName}-core-config.groovy"
]
def loadFiles = {path ->
    configFiles.each {fileName ->
        def file = new File(path, fileName)
        if (file.exists()) {
            println "*** loading $file.path"
            grails.config.locations << "file:" + file.path
        }
    }
}
println "--------------------------------------------------------"
// 1: A command line option should override everything.
// Test by running:
// grails -DPSELF_CONFIG_PATH=C:\path\to\config_dir run-app
if (System.getProperty(ENV_NAME)) {
    println "Including configuration files specified on command line from: " + System.getProperty(ENV_NAME)
    loadFiles(System.getProperty(ENV_NAME))
}
// 2: If this is a developer machine, then they will have their own config and
// I should use that.
else if (new File("${userHome}/.grails/${appName}-config").exists()) {
    println "*** User defined config directory: file:${userHome}/.grails/${appName}-config ***"
    loadFiles("${userHome}/.grails/${appName}-config")
}
// 3: Most QA and PROD machines should define a System Environment variable
// that will define where we should look.
else if (System.getenv(ENV_NAME)) {
    println("Including System Environment configuration files from: " + System.getenv(ENV_NAME))
    loadFiles(System.getenv(ENV_NAME))
}
// 4: Houston, we have a problem!
else {
    println "*** No external configuration file defined. ***"
    println "*** No external configuration file defined. ***"
    println "*** No external configuration file defined. ***"
}


grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination

// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [ // the first one is the default format
    all:           '*/*', // 'all' maps to '*' or the first available format in withFormat
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    hal:           ['application/hal+json','application/hal+xml'],
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']
grails.resources.adhoc.includes = ['/images/**', '/css/**', '/js/**', '/plugins/**']

// Legacy setting for codec used to encode data with ${}
grails.views.default.codec = "html"

// The default scope for controllers. May be prototype, session or singleton.
// If unspecified, controllers are prototype scoped.
grails.controllers.defaultScope = 'singleton'

// GSP settings
grails {
    views {
        gsp {
            encoding = 'UTF-8'
            htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
            codecs {
                expression = 'html' // escapes values inside ${}
                scriptlet = 'html' // escapes output from scriptlets in GSPs
                taglib = 'none' // escapes output from taglibs
                staticparts = 'none' // escapes output from static template parts
            }
        }
        // escapes all not-encoded output at final stage of outputting
        // filteringCodecForContentType.'text/html' = 'html'
    }
}


grails.converters.encoding = "UTF-8"
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

// configure passing transaction's read-only attribute to Hibernate session, queries and criterias
// set "singleSession = false" OSIV mode in hibernate configuration after enabling
grails.hibernate.pass.readonly = false
// configure passing read-only to OSIV session by default, requires "singleSession = false" OSIV mode
grails.hibernate.osiv.readonly = false

environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',        // controllers
           'org.codehaus.groovy.grails.web.pages',          // GSP
           'org.codehaus.groovy.grails.web.sitemesh',       // layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping',        // URL mapping
           'org.codehaus.groovy.grails.commons',            // core / classloading
           'org.codehaus.groovy.grails.plugins',            // plugins
           'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'
}


// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'it.ggg.sa.security.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'it.ggg.sa.security.UserRole'
grails.plugin.springsecurity.authority.className = 'it.ggg.sa.security.Role'
grails.plugin.springsecurity.requestMap.className = 'it.ggg.sa.security.Requestmap'
grails.plugin.springsecurity.securityConfigType = 'Requestmap'
grails.plugin.springsecurity.ui.password.minLength = 3 //default: 8
grails.plugin.springsecurity.ui.password.maxLength = 20 //default: 64
grails.plugin.springsecurity.ui.password.validationRegex = '^.*(?=.*\\d)(?=.*[a-zA-Z]).*$'

grails.plugin.springsecurity.ui.register.emailBody = '''Salve $user.username,<br/>
e' stato creato un account per SA con questo indirizzo email.<br/>
Per completare la registrazione, fai click sul seguente link: <a href="$url">Completa registrazione</a>.<br/>
Saluti'''
grails.plugin.springsecurity.ui.register.emailSubject = 'SA - Nuovo account'
grails.plugin.springsecurity.ui.register.emailFrom = 'SA'

//grails.plugin.springsecurity.controllerAnnotations.staticRules = [
//	'/':                              ['permitAll'],
//	'/index':                         ['permitAll'],
//	'/index.gsp':                     ['permitAll'],
//	'/assets/**':                     ['permitAll'],
//	'/**/js/**':                      ['permitAll'],
//	'/**/css/**':                     ['permitAll'],
//	'/**/images/**':                  ['permitAll'],
//	'/**/favicon.ico':                ['permitAll']
//]
//
//grails.resources.uri.prefix = ''

grails.databinding.dateFormats = ["dd/mm/yyyy"]
grails.resources.rewrite.css = false

