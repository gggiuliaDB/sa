package it.ggg.sa.carrello



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarrelloController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Carrello.list(params), model:[carrelloInstanceCount: Carrello.count()]
    }

    def show(Carrello carrelloInstance) {
        respond carrelloInstance
    }

    def add() {
        println("aaaaaaaaaaaaaaaaaaaad")
        respond new Carrello(params)
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carrello.label', default: 'Carrello'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
/*
 def create() {
     respond new Carrello(params)
 }

 @Transactional
 def save(Carrello carrelloInstance) {
     if (carrelloInstance == null) {
         notFound()
         return
     }

     if (carrelloInstance.hasErrors()) {
         respond carrelloInstance.errors, view:'create'
         return
     }

     carrelloInstance.save flush:true

     request.withFormat {
         form multipartForm {
             flash.message = message(code: 'default.created.message', args: [message(code: 'carrello.label', default: 'Carrello'), carrelloInstance.id])
             redirect carrelloInstance
         }
         '*' { respond carrelloInstance, [status: CREATED] }
     }
 }

 def edit(Carrello carrelloInstance) {
     respond carrelloInstance
 }

 @Transactional
 def update(Carrello carrelloInstance) {
     if (carrelloInstance == null) {
         notFound()
         return
     }

     if (carrelloInstance.hasErrors()) {
         respond carrelloInstance.errors, view:'edit'
         return
     }

     carrelloInstance.save flush:true

     request.withFormat {
         form multipartForm {
             flash.message = message(code: 'default.updated.message', args: [message(code: 'Carrello.label', default: 'Carrello'), carrelloInstance.id])
             redirect carrelloInstance
         }
         '*'{ respond carrelloInstance, [status: OK] }
     }
 }

 @Transactional
 def delete(Carrello carrelloInstance) {

     if (carrelloInstance == null) {
         notFound()
         return
     }

     carrelloInstance.delete flush:true

     request.withFormat {
         form multipartForm {
             flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carrello.label', default: 'Carrello'), carrelloInstance.id])
             redirect action:"index", method:"GET"
         }
         '*'{ render status: NO_CONTENT }
     }
 }
*/