package it.ggg.sa.prodotto

class InternazionalizzazioneTipoProdotto {

    Locale locale
    String nome
    
    static belongsTo = [tipoProdotto: TipoProdotto]
    
    static constraints = {        
    }
}
