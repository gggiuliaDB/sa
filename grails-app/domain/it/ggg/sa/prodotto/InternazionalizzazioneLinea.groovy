package it.ggg.sa.prodotto

class InternazionalizzazioneLinea {

    Locale locale
    String nome
    
    static belongsTo = [linea: Linea]
    
    static constraints = {
        
    }
}
