package it.ggg.sa.prodotto

class TipoProdotto {
    String id
    String nome
    //String sigla
    static hasMany = [internazionalizzazioni: InternazionalizzazioneTipoProdotto]

    static constraints = {
    }
    static mapping = {
        id generator: 'assigned'
	}
    
    static def tipiPerLinea(Linea linea){
        List tipi=[]
        TipoProdotto.list().each {it->  
            int conta = Prodotto.countByTipoProdottoAndLinea(it, linea)
            println("prodotti di tipo ${it.nome} della linea ${linea.nome}: ${conta}")
            if(conta > 0){
                tipi<<it
            }
            println("tipi size: ${tipi.size()}")
            tipi
        }
    } 
    
    
    def getNome(String locale){
        //println("getNome locale: [${locale.toString()}]")
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
