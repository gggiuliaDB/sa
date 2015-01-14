package it.ggg.sa.ordine

class OrdineCompletatoFilters {

    def filters = {
        all(controller: 'paypal', action: '(success|notifyPaypal)') {
            
            after = { Map model ->
                
                def payment = request.payment
                println("OrdineCompletatoFilters payment: ${payment}")
                
                if(payment && payment.status == org.grails.paypal.Payment.COMPLETE) {
                    println("Stato del pagamento COMPLETE")    
                }
//                def payment = request.payment
//                if(payment && payment.status == org.grails.paypal.Payment.COMPLETE) {
//                    def purchase = ProductPurchase.findByPayment(payment)
//                    if ( !purchase.completed ) {
//                        purchase.completed = true
//                    }
//                }
            }
            
        }
    }
}
