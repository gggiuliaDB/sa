package it.ggg.sa.prodotto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProdottoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService 
    def excelImportService
    
     def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        def topProducts = Prodotto.findAllByTop(1)
        
        //def topProducts=[]
        //topProducts<<Prodotto.get(1)
        //topProducts<<Prodotto.get(2)
        //topProducts<<Prodotto.get(3)
        
        respond Prodotto.list(params), model:[topProducts: topProducts]
    }
     
     def search(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def c = Prodotto.createCriteria()
        def results = c.list (params) {
            if(params.tipoProdotto){
                //eq("tipoProdotto.id", params.tipoProdotto as Long)
                eq("tipoProdotto.id", params.tipoProdotto)
            }
            if(params.linea){
                //eq("linea.id", params.linea as Long)
                eq("linea.id", params.linea)
            }
            if(params.q){
                or{
                    like("nome", "%${params.q}%")
                    like("descrizione", "%${params.q}%")
                }
            }
            order("nome")
        }
        //println("list: ${Prodotto.list()}")
        //println("results: ${results}")   
        respond results, model:[
            prodottoInstanceCount: results.totalCount,
            q: params.q, 
            linea: params.linea,
            tipoProdotto: params.tipoProdotto,
            lang:params.lang] 
    }

    
    def list(Integer max) {
//        if(!springSecurityService.currentUser?.isAdmin()){
//            render 'Non sei autorizzato'
//            return
//        }
        params.max = Math.min(max ?: 10, 100)
        respond Prodotto.list(params), model:[prodottoInstanceCount: Prodotto.count()]
    }

    def show(Prodotto prodottoInstance) {
        respond prodottoInstance
    }
    
    def detail(Prodotto prodottoInstance) {
        respond prodottoInstance
    }

    def create() {
        respond new Prodotto(params)
    }

    @Transactional
    def save(Prodotto prodottoInstance) {
        if (prodottoInstance == null) {
            notFound()
            return
        }

        if (prodottoInstance.hasErrors()) {
            respond prodottoInstance.errors, view:'create'
            return
        }

        prodottoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prodotto.label', default: 'Prodotto'), prodottoInstance.id])
                redirect prodottoInstance
            }
            '*' { respond prodottoInstance, [status: CREATED] }
        }
    }

    def edit(Prodotto prodottoInstance) {
        respond prodottoInstance
    }

    @Transactional
    def update(Prodotto prodottoInstance) {
        if (prodottoInstance == null) {
            notFound()
            return
        }

        if (prodottoInstance.hasErrors()) {
            respond prodottoInstance.errors, view:'edit'
            return
        }

        prodottoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Prodotto.label', default: 'Prodotto'), prodottoInstance.id])
                redirect prodottoInstance
            }
            '*'{ respond prodottoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Prodotto prodottoInstance) {

        if (prodottoInstance == null) {
            notFound()
            return
        }

        prodottoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Prodotto.label', default: 'Prodotto'), prodottoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
    
    def viewImage(){
        //println("viewImage id: ${params.id}")
        def prodotto = Prodotto.get( params.id)
        byte[] image = prodotto.createByteArray( )
        response.outputStream << image
    }
    
    
    def aggiornaListino(){
        def file_path = "C:/appo/lll.xlsx"
        def read_only = true
         
        // Unfortunately this will work only on windows because of this driver :(
        def connection_url= """jdbc:odbc:Driver={Microsoft Excel Driver (*.xls, *.xlsx, *.xlsm, *.xlsb)};
            DBQ=$file_path;READONLY=$read_only"""
         
        if (!new File(file_path).exists()) return "invalid file"
         
        def sql = groovy.sql.Sql.newInstance(connection_url, '', '')
         
        sql.eachRow ('SELECT * FROM [Foglio1$]') { 
        // remember, 
        // 1. $ should follow sheet name
        // 2. if using GString, escape dollar  "sheet_name\$"
            println it
        }
         
        sql.close()
        redirect action:"list"
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodotto.label', default: 'Prodotto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
