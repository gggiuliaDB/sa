import org.apache.log4j.DailyRollingFileAppender

//ws.offerte.endpointTest="http://localhost:8000/P-SELF-WS/offerta/index"
ws.offerte.endpoint="http://localhost/testPSELF-RicercaAnnunci.php"
//ws.offerte.endpoint="http://144.76.92.103:9800/vacancy"
ws.candidati.endpoint="http://144.76.92.103:9800/profile"
ws.aziende.endpoint="http://144.76.92.103:9800/azienda"
allegati.path="/tmp/allegati"

grails {
        mail {
            host="localhost"
            port = 25
            username = "ggg"
            password = "ddd"
            /*host = "smtp.gmail.com"
            port = 465
            username = "mail.pself@gmail.com"
            password = "Pself123"
            props = ["mail.transport.protocol":"smtps",
                 "mail.smtps.host":"smtp.gmail.com",
                 "mail.smtps.port":"465",
                 "mail.smtps.auth":"true"]
		*/
        }
}

log4j = {
    root={
    }
    appenders {
        appender new DailyRollingFileAppender(
            name: "saFileAppender",
            datePattern: "'.'yyyy-MM-dd",
            file: "target\\logs\\sa.log",
            layout: pattern(conversionPattern:'%d [%t] %-5p %c{2} %x - %m%n')
        )        
        appender new DailyRollingFileAppender(
            name: "coreFileAppender",
            datePattern: "'.'yyyy-MM-dd",
            file: "target\\logs\\core.log",
            layout: pattern(conversionPattern:'%d [%t] %-5p %c{2} %x - %m%n')
        )
    }
    debug saFileAppender: ['grails.app.controllers', 'grails.app.services']
    error   coreFileAppender: [
                'org.codehaus.groovy.grails.web.servlet',  //  controllers
                'org.codehaus.groovy.grails.web.pages', //  GSP
                'org.codehaus.groovy.grails.web.sitemesh', //  layouts
                'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
                'org.codehaus.groovy.grails.web.mapping', // URL mapping
                'org.codehaus.groovy.grails.commons', // core / classloading
                'org.codehaus.groovy.grails.plugins', // plugins
                'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
                'org.springframework',
                'org.hibernate',
                'net.sf.ehcache.hibernate']           
}
