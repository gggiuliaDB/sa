package it.ggg.sa.acquisto

class AcquistoCompletatoFilters {

    def filters = {
        all(controller: 'paypal', action: '(success|notifyPaypal)') {
            before = {
            }
            after = { Map model ->
//                def payment = request.payment
//                if(payment && payment.status == org.grails.paypal.Payment.COMPLETE) {
//                    def purchase = ProductPurchase.findByPayment(payment)
//                    if ( !purchase.completed ) {
//                        purchase.completed = true
//                    }
//                }
            }
            afterView = { Exception e ->
            }
        }
    }
}
