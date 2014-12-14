package it.ggg.sa.prodotto

class Confezione {
    //Prodotto prodotto
    String descrizione
    Double prezzo
    Double peso
    Double sconto
    String note
    static belongsTo = [prodotto: Prodotto]
    static constraints = {
        descrizione maxSize:1024
        sconto nullable:true
        note nullable:true, maxSize:1024
    }
}
