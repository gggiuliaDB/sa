package it.ggg.sa.localization

import groovy.xml.MarkupBuilder

import org.springframework.web.servlet.support.RequestContextUtils

class LocaleTagLib {
    //static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']

    static namespace = 'locale'

    List<Locale> locales = [
        Locale.ITALY,
        Locale.FRANCE,
        Locale.UK,
        Locale.JAPAN
    ]

    /**
     * Renders a locale selector.
     * Adds the class <code>active</code> to the list-element of the current language.
     */
    def selector = {
        Locale requestLocale = RequestContextUtils.getLocale(request)

        MarkupBuilder mb = new MarkupBuilder(out)
        mb.ul('id': 'locale-selector', 'class':'dropdown-menu') {
            locales.each { Locale locale ->
                li(requestLocale.language == locale.language ? ['class': 'active'] : [:]) {
                    mb.yield(link( controller: controllerName, action: actionName, params: params + [lang: locale.language],
                        { locale.getDisplayLanguage(locale) } ).toString(),
                        false
                        )
                }
            }
        }
    }
    
//    def selector = {
//        Locale requestLocale = RequestContextUtils.getLocale(request)
//
//        MarkupBuilder mb = new MarkupBuilder(out)
//        mb.ul('id': 'locale-selector') {
//            locales.each { Locale locale ->
//                li(requestLocale.language == locale.language ? ['class': 'active'] : [:]) {
//                    mb.yield(link( controller: controllerName, action: actionName, params: params + [lang: locale.language],
//                        { locale.getDisplayLanguage(locale) } ).toString(),
//                        false
//                        )
//                }
//            }
//        }
//    }

}
