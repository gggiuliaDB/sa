package it.ggg.sa.ordine

class OrdineCompletatoFilters {
    def taskService
    
    def filters = {
        all(controller: 'paypal', action: '(success|notifyPaypal)') {
            
            after = { Map model ->
                
                def payment = request.payment
                println("OrdineCompletatoFilters payment: ${payment} (params: ${params}")
                
                if(payment && payment.status == org.grails.paypal.Payment.COMPLETE) {
                    println("Stato del pagamento COMPLETE")
                    Ordine ordine = Ordine.findByPayment(payment)
                    ordine.totalePagato = ordine.calcolaTotale()
                    ordine.statoPagamento = StatoPagamento.PAGATO
                    ordine.statoOrdine = StatoOrdine.DA_SPEDIRE
                    ordine.save(flush:true)
                    //Chiudo il task
                    try{
                        taskService.complete(ordine.taskId.toString(), [azione: "conferma"]) 
                        println("TTTTTTTTTTTTTTTtask completato con id ${ordine.taskId}")
                    }
                    catch(RuntimeException ex){
                        println("EEEEEEEEEEEEEEEerrore in OrdineFilters - complete ${ex}")
                    }
    
                }
            }
            
        }
    }
}
