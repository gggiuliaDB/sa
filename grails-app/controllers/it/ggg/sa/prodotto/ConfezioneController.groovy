package it.ggg.sa.prodotto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConfezioneController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Confezione.list(params), model:[confezioneInstanceCount: Confezione.count()]
    }

    def show(Confezione confezioneInstance) {
        respond confezioneInstance
    }

    def create() {
        respond new Confezione(params)
    }

    @Transactional
    def save(Confezione confezioneInstance) {
        if (confezioneInstance == null) {
            notFound()
            return
        }

        if (confezioneInstance.hasErrors()) {
            respond confezioneInstance.errors, view:'create'
            return
        }

        confezioneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'confezione.label', default: 'Confezione'), confezioneInstance.id])
                redirect confezioneInstance
            }
            '*' { respond confezioneInstance, [status: CREATED] }
        }
    }

    def edit(Confezione confezioneInstance) {
        respond confezioneInstance
    }

    @Transactional
    def update(Confezione confezioneInstance) {
        if (confezioneInstance == null) {
            notFound()
            return
        }

        if (confezioneInstance.hasErrors()) {
            respond confezioneInstance.errors, view:'edit'
            return
        }

        confezioneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Confezione.label', default: 'Confezione'), confezioneInstance.id])
                redirect confezioneInstance
            }
            '*'{ respond confezioneInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Confezione confezioneInstance) {

        if (confezioneInstance == null) {
            notFound()
            return
        }

        confezioneInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Confezione.label', default: 'Confezione'), confezioneInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'confezione.label', default: 'Confezione'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
