package it.ggg.sa.ordine

import org.grails.paypal.Payment;

import it.ggg.sa.prodotto.Confezione;

class OrdineFilters {
    
    def filters = {
        all(controller:'paypal', action:'buy') {  //
            before = {
                //println("OrdineFilters payment: before actionName: ${actionName}")
            }
            after = { Map model ->
                def payment = request.payment
                println("OrdineFilters payment: ${payment} (model: ${model}) (params: ${params})")
                
                if(!params.itemNumber){
                    return 
                }
                Ordine ordine = Ordine.get(params.itemNumber as Long)
                ordine.payment = payment
                ordine.save(flush:true)
                
                }
           
        }       
    }
}
