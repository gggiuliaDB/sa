package it.ggg.sa.ordine

import it.ggg.sa.prodotto.Confezione;

class OrdineFilters {

    def filters = {
        all(controller:'paypal', action:'buy') {
            before = {
            }
            after = { Map model ->
//                def user = User.get(request.payment.buyerId)
//                def item = Confezione.findByName(request.payment.paymentItems[0].itemName)
//                new Acquisto( user:user, payment:request.payment, item:item).save()
            }
            afterView = { Exception e ->
            }
        }       
    }
}
