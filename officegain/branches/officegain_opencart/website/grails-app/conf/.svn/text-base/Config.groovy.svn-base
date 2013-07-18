// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if(System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [html: ['text/html', 'application/xhtml+xml'],
        xml: ['text/xml', 'application/xml'],
        text: 'text/plain',
        js: 'text/javascript',
        rss: 'application/rss+xml',
        atom: 'application/atom+xml',
        css: 'text/css',
        csv: 'text/csv',
        all: '*/*',
        json: ['application/json', 'text/json'],
        form: 'application/x-www-form-urlencoded',
        multipartForm: 'multipart/form-data'
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// whether to install the java.util.logging bridge for sl4j. Disable for AppEngine!
grails.logging.jul.usebridge = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// set per-environment serverURL stem for creating absolute links
environments {
    production {
        grails.serverURL = "http://www.changeme.com"
    }
    development {
        grails.serverURL = "http://localhost:8080/${appName}"
    }
    test {
        grails.serverURL = "http://localhost:8080/${appName}"
    }

}

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error 'org.codehaus.groovy.grails.web.servlet',  //  controllers
            'org.codehaus.groovy.grails.web.pages', //  GSP
            'org.codehaus.groovy.grails.web.sitemesh', //  layouts
            'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
            'org.codehaus.groovy.grails.web.mapping', // URL mapping
            'org.codehaus.groovy.grails.commons', // core / classloading
            'org.codehaus.groovy.grails.plugins', // plugins
            'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
            'org.springframework',
            'org.hibernate',
            'net.sf.ehcache.hibernate'

    warn 'org.mortbay.log'
}

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.officegain.enigma.base.Customer'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.officegain.enigma.base.UserRole'
grails.plugins.springsecurity.userLookup.usernamePropertyName = 'emailAddress'
grails.plugins.springsecurity.authority.className = 'com.officegain.enigma.base.Role'
grails.plugins.springsecurity.securityConfigType = 'InterceptUrlMap'
grails.plugins.springsecurity.interceptUrlMap = [
        '/**': ['IS_AUTHENTICATED_ANONYMOUSLY']
]

grails.plugins.springsecurity.ui.register.emailBody = 'Hi $customer.emailAddress,<br/>\n' +
        '<br/>\n' +
        'You (or someone pretending to be you) created an account with this email address.<br/>\n' +
        '<br/>\n' +
        'If you made the request, please click <a href="$url">here</a> to finish the registration.'

grails.plugins.springsecurity.ui.forgotPassword.emailBody = 'Hi $customer.emailAddress,<br/>\n' +
        '<br/>\n' +
        'You (or someone pretending to be you) requested that your password be reset.<br/>\n' +
        '<br/>\n' +
        'If you didn\'t make this request then ignore the email; no changes have been made.<br/>\n' +
        '<br/>\n' +
        'If you did make the request, then click <a href="$url">here</a> to reset your password.'

grails {
    mail {
        host = "smtp.gmail.com"
        port = 587
        username = "donotreply@officegain.com"
        password = "admin@1234"
        props = ["mail.debug": "true",
                "mail.smtp.protocol": "smtps",
                "mail.smtp.auth": "true",
                "mail.smtp.starttls.enable": "true",
                "mail.smtp.host": "smtp.gmail.com",
                "mail.smtp.user": "donotreply@officegain.com",
                "mail.smtp.password": "admin@1234"]
    }
}

website.baseUploadUrl = 'http://localhost/images'
website.baseUploadDir = 'C:/wamp/www/images'

richui.treeViewRenderer="com.officegain.enigma.website.richui.renderer.TreeViewRenderer"