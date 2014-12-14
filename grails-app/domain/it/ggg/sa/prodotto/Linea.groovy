package it.ggg.sa.prodotto

class Linea {
    String id
    String nome
    //String sigla
    static hasMany = [internazionalizzazioni: InternazionalizzazioneLinea]

    static constraints = {
    }
    static mapping = {
        id generator: 'assigned'
	}

    def getNome(String locale){
        if(locale){
            for(int i=0; i<internazionalizzazioni.size(); i++){
                def it = internazionalizzazioni[i]
                if (it.locale.toString() == locale.toString()){
                    return it.nome
                }
            }        
        }
        nome
    }
    
}
