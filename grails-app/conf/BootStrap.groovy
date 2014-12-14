import it.ggg.sa.Listino.Listino
import it.ggg.sa.prodotto.Linea
import it.ggg.sa.prodotto.Prodotto
import it.ggg.sa.prodotto.TipoProdotto
import it.ggg.sa.security.Requestmap
import it.ggg.sa.security.Role
import it.ggg.sa.security.User
import it.ggg.sa.security.UserRole

class BootStrap {

    def init = { servletContext ->
        inizializzaRuoli()
        inizializzaUtenti()
        inizializzaRequestMap()
        
        //inizializzaLinea()
        //inizializzaTipiProdotto()
        //inizializzaProdotti()        
    }
    def destroy = {
    }
    
//    def inizializzaLinea(){
//        if(Linea.count()==0){
//            println("Inserimento Categoria")
//            Linea l1 = new Linea()
//            l1.nome = "Linea Sarda Affumicati"
//            l1.id = "SA"
//            l1.save()
//            
//            Linea l2 = new Linea()
//            l2.nome ="Linea Delizie di Sardegna"
//            l2.id = "DS"
//            l2.save()
//            
//            
//        }
//    }
//    def inizializzaTipiProdotto(){
//        if(TipoProdotto.count()==0){
//            println("Inserimento Tipi")
//            TipoProdotto t1 = new TipoProdotto()
//            t1.nome = "Mare"
//            t1.id = "M"
//            t1.save()
//            
//            TipoProdotto t2 = new TipoProdotto()
//            t2.nome = "Terra"
//            t2.id = "T"
//            t2.save()
//            
//        }
//    }
//    
//    def inizializzaProdotti(){
//        
//        if(Prodotto.count()==0){
//           Listino.inizializzaListino()
//        }
//    }
    
    private def inizializzaRuoli(){
        def roleAdmin = Role.findByAuthority(Role.ROLE_ADMIN)
        if(!roleAdmin){
            roleAdmin = new Role(authority: Role.ROLE_ADMIN)
            roleAdmin.id = Role.ROLE_ADMIN
            roleAdmin.save(flush:true)
        }
        def roleUser = Role.findByAuthority(Role.ROLE_USER)
        if(!roleUser){
            roleUser = new Role( authority: Role.ROLE_USER)
            roleUser.id = Role.ROLE_USER
            roleUser.save(flush:true)
        }
    }
    private def inizializzaUtenti(){
        def roleAdmin = Role.findByAuthority(Role.ROLE_ADMIN)
        def roleUser = Role.findByAuthority(Role.ROLE_USER)
        
        //admin
        if(!User.findByUsername("admin")){
            def admin =  new User(username: "admin", password: "admin", accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
            UserRole.findOrSaveWhere(user: admin, role: roleAdmin)
        }
        
        //user1
        if(!User.findByUsername("user1")){
            def user1 = new User(username: "user1", password: "user1", accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
            UserRole.findOrSaveWhere(user: user1, role: roleUser)
        }
    }
    
    private void inizializzaRequestMap(){
        Requestmap.findOrSaveByUrlAndConfigAttribute('/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/login/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/logout/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/images/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/css/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/js/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap.findOrSaveByUrlAndConfigAttribute('/plugins/**', 'IS_AUTHENTICATED_ANONYMOUSLY')
        
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/detail/*', 'IS_AUTHENTICATED_ANONYMOUSLY' )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/search/*', 'IS_AUTHENTICATED_ANONYMOUSLY' )
        
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/list', "${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/create', "${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/show/*', "${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/edit/*', "${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto/delete*', "${Role.ROLE_ADMIN}" )
        //Requestmap.findOrSaveByUrlAndConfigAttribute('/prodotto', "${Role.ROLE_ADMIN}" )
        
        Requestmap.findOrSaveByUrlAndConfigAttribute('/confezione/**', "${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/carrello/**', "${Role.ROLE_USER}, ${Role.ROLE_ADMIN}" )
        Requestmap.findOrSaveByUrlAndConfigAttribute('/acquisto/**', "${Role.ROLE_USER}, ${Role.ROLE_ADMIN}" )
         
    }
    
    
}
