package it.ggg.sa.carrello

import it.ggg.sa.security.User

class Carrello {

    User utente
   
    Date dateCreated
    static hasMany = [confezioniCarrello: ConfezioneCarrello]
    
    static constraints = {
    }
}
