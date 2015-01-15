package it.ggg.sa.ordine

import it.ggg.sa.prodotto.Confezione;

class OrdineFilters {

    def filters = {
        all(controller:'paypal', action:'*') {  //buy
            before = {
                println("OrdineFilters payment: before actionName: ${actionName}")
                
            }
            after = { Map model ->
                def payment = request.payment
                println("OrdineFilters payment: ${payment} (model: ${model})")
                
//                def user = User.get(request.payment.buyerId)
//                def item = Confezione.findByName(request.payment.paymentItems[0].itemName)
//                new Acquisto( user:user, payment:request.payment, item:item).save()
            }
           
        }       
    }
}
