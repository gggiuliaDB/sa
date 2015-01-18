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
                    ordine.statoPagamento = StatoPagamento.PAGATO
                 
                    //Chiudo il task
                    try{
                        /*
                        def tasks = taskService.
                            createTaskQuery().
                            taskAssignee(ordine.utente.username).
                            list()
                        tasks.each {
                            println("TASK ${it.id}")  
                            it.properties.each {k, v->
                                println("  ${k}: ${v}")
                            }
                        }*/
                        
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
