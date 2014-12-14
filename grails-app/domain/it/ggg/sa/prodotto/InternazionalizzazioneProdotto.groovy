package it.ggg.sa.prodotto

class InternazionalizzazioneProdotto {

    Locale locale
    String nome
    String descrizione
    String comeGustarlo
    String ingredienti
    String conservazione
    String note
    
    static belongsTo = [prodotto: Prodotto]
    
    static constraints = {
        descrizione nullable:true, maxSize:1024
        comeGustarlo nullable:true, maxSize:1024
        ingredienti nullable:true, maxSize:1024
        conservazione nullable:true, maxSize:1024
        note nullable:true, maxSize:1024
    }
}
