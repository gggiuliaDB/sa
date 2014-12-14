package it.ggg.sa.Listino;
import it.ggg.sa.prodotto.TipoProdotto;


import it.ggg.sa.prodotto.Confezione;
import it.ggg.sa.prodotto.Linea;
import it.ggg.sa.prodotto.Prodotto;

public class Listino {
    
    public static void inizializzaListino(){

        new Prodotto(nome: "Tonno affumicato"             , descrizione: "Tonno affumicato"             , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/1. Linea SA - tonno.jpg               ")).save(flush: true)
        new Prodotto(nome: "Trota salmonata affumicata"   , descrizione: "Trota salmonata affumicata"   , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/2. Linea SA - trota.jpg               ")).save(flush: true)
        new Prodotto(nome: "Storione beluga affumicato"   , descrizione: "Storione beluga affumicato"   , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/3. Linea SA - storione.jpg            ")).save(flush: true)
        new Prodotto(nome: "Salone affumicato"            , descrizione: "Salone affumicato"            , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/4. Linea SA - salmone.jpg             ")).save(flush: true)
        new Prodotto(nome: "Coda di pescatrice affumicata", descrizione: "Coda di pescatrice affumicata", linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/5. Linea SA - rana.jpg                ")).save(flush: true)
        new Prodotto(nome: "Anguilla affumicata"          , descrizione: "Anguilla affumicata"          , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/6. Linea SA - anguilla.jpg            ")).save(flush: true)
        new Prodotto(nome: "Bottarga di muggine"          , descrizione: "Bottarga di muggine"          , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/7. Linea SA - bottarga muggine.jpg    ")).save(flush: true)
        new Prodotto(nome: "Bottarga di tonno"            , descrizione: "Bottarga di tonno"            , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/8. Linea SA - bottarga tonno.jpg      ")).save(flush: true)
        new Prodotto(nome: "Cernia affumicata"            , descrizione: "Cernia affumicata"            , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/9. Linea SA - cernia.jpg              ")).save(flush: true)
        new Prodotto(nome: "Filetti di tonno sott'olio"   , descrizione: "Filetti di tonno sott'olio"   , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/10. Linea SA - filetti tonno.jpg      ")).save(flush: true)
        new Prodotto(nome: "Mosciame di tonno"            , descrizione: "Mosciame di tonno"            , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/11. Linea SA - mosciame tonno.jpg     ")).save(flush: true)
        new Prodotto(nome: "Pesce spada affumicato"       , descrizione: "Pesce spada affumicato"       , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/12. Linea SA - spada.jpg              ")).save(flush: true)
        new Prodotto(nome: "Mackarello affumicato"        , descrizione: "Mackarello affumicato"        , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/13. Linea SA - mackarello.jpg         ")).save(flush: true)
        new Prodotto(nome: "Combinati vegetali"           , descrizione: "Combinati vegetali"           , linea: Linea.get("SA"), tipoProdotto: TipoProdotto.get("T"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/14. Linea SA - vegetali.jpg           ")).save(flush: true)
        new Prodotto(nome: "Tenerezze di polpo"           , descrizione: "Tenerezze di polpo"           , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/1. Linea DS - polpo.jpg               ")).save(flush: true)
        new Prodotto(nome: "Insalata di mare"             , descrizione: "Insalata di mare"             , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/2. Linea DS - insalata mare.jpg       ")).save(flush: true)
        new Prodotto(nome: "Tonno in scatola"             , descrizione: "Tonno in scatola"             , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/3. Linea DS - tonno scatola.jpg       ")).save(flush: true)
        new Prodotto(nome: "Salmone Norvegese"            , descrizione: "Salmone Norvegese"            , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/4. Linea DS - salmone norvegese.jpg   ")).save(flush: true)
        new Prodotto(nome: "Anguilla affumicata"          , descrizione: "Anguilla affumicata"          , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/5. Linea DS - anguilla.jpg            ")).save(flush: true)
        new Prodotto(nome: "Bresaola di tonno"            , descrizione: "Bresaola di tonno"            , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/6. Linea DS - breasola tonno.jpg      ")).save(flush: true)
        new Prodotto(nome: "Tonno affumicato"             , descrizione: "Tonno affumicato"             , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/7. Linea DS - tonno affumicato.jpg    ")).save(flush: true)
        new Prodotto(nome: "Cernia affumicata"            , descrizione: "Cernia affumicata"            , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/8. Linea DS - cernia affumicata.jpg   ")).save(flush: true)
        new Prodotto(nome: "Pesce spada affumicato"       , descrizione: "Pesce spada affumicato"       , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/9. Linea DS - spada affumicato.jpg    ")).save(flush: true)
        new Prodotto(nome: "Carpaccio di cernia"          , descrizione: "Carpaccio di cernia"          , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/10. Linea DS - carpaccio di cernia.jpg")).save(flush: true)
        new Prodotto(nome: "Carpaccio di tonno"           , descrizione: "Carpaccio di tonno"           , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/11. Linea DS - carpaccio di tonno.jpg ")).save(flush: true)
        new Prodotto(nome: "Carpaccio di spada"           , descrizione: "Carpaccio di spada"           , linea: Linea.get("DS"), tipoProdotto: TipoProdotto.get("M"), immagine: Prodotto.getSqlBlobFromFile("c:/appo/sa/img/12. Linea DS - carpaccio di spada.jpg ")).save(flush: true)
        
        
    }

/*
    public static void inizializzaListinoOLD(){
        def listino=[]
        
        listino<<[nome:"ANGUILLE INTERE (WHOLESIDE EELS)" ]
        listino<<[nome:"  ANGUILLE INTERE (WHOLESIDE EELS)" ]
        listino<<[nome:"FILETTI DI ANGUILLA INTERA (SMOKED EELS FILLETS WHOLESIDE)" ]
        listino<<[nome:"  Vaschetta 100 gr. (peso variabile)" ]
        listino<<[nome:"  Vaschetta 350 gr. (peso variabile)" ]
        listino<<[nome:"FILETTI DI ANGUILLA PREAFFETTATA (SMOKED EELS PRESLICED)" ]
        listino<<[nome:"  Vaschetta 100 gr. (peso variabile)" ]
        listino<<[nome:"  Vaschetta 350 gr. (peso variabile)" ]
        listino<<[nome:"CERNIA (SMOKED BASS)" ]
        listino<<[nome:"  Baffe" ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"PESCE SPADA (SMOKED SWORDFISH)" ]
        listino<<[nome:"  Tranci" ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"MARLIN AFFUMICATO TRANCI" ]
        listino<<[nome:"  MARLIN AFFUMICATO TRANCI" ]
        listino<<[nome:"TONNO (SMOKED TUNA FISH)" ]
        listino<<[nome:"  Tranci" ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"STORIONE BELUGA (SMOKED CASPIAN BELUGA STURGEON)" ]
        listino<<[nome:"  Tranci" ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"BOTTARGA DI MUGGINE (DRIED MULLET ROE) (per etichettatura singola euro 1,03 in più a Kg)" ]
        listino<<[nome:"  Baffe 40-70 gr." ]
        listino<<[nome:"  Baffe 70-110 gr." ]
        listino<<[nome:"  Baffe 110-140 gr." ]
        listino<<[nome:"  Baffe 140-170 gr." ]
        listino<<[nome:"  Baffe 170-200 gr." ]
        listino<<[nome:"  Baffe 200-300 gr." ]
        listino<<[nome:"  Baffe 300 up" ]
        listino<<[nome:"  Confezione regalo baffe 170-200 gr." ]
        listino<<[nome:"  Baffe 30-140 gr. scura" ]
        listino<<[nome:"  Macinata buste 500 gr. POWDER" ]
        listino<<[nome:"  Macinata buste 100 gr. POWDER" ]
        listino<<[nome:"  Macinata buste 50 gr. POWDER" ]
        listino<<[nome:"  Macinata orcio 70 gr. POWDER" ]
        listino<<[nome:"  Macinata orcio 40 gr. POWDER" ]
        listino<<[nome:"MOSCIAME DI TONNO (MOSCIAME OF TUNA FISH)" ]
        listino<<[nome:"  MOSCIAME DI TONNO (MOSCIAME OF TUNA FISH)" ]
        listino<<[nome:"BRESAOLA DI TONNO (BRESAOLA OF TUNA FISH)" ]
        listino<<[nome:"  BRESAOLA DI TONNO (BRESAOLA OF TUNA FISH)" ]
        listino<<[nome:"BRESAOLA DI TONNO 100 GR. (BRESAOLA OF TUNA FISH 100 GR)" ]
        listino<<[nome:"  BRESAOLA DI TONNO 100 GR. (BRESAOLA OF TUNA FISH 100 GR)" ]
        listino<<[nome:"PESCATRICE (MONKFISH)" ]
        listino<<[nome:"  PESCATRICE (MONKFISH)" ]
        listino<<[nome:"MACKARELLO (SMOKED MACKARELL FILLETS)" ]
        listino<<[nome:"  MACKARELLO (SMOKED MACKARELL FILLETS)" ]
        listino<<[nome:"SALMONE NORVEGESE INTERO (NORVEGIAN SALMON SALAR WHOLESIDE)" ]
        listino<<[nome:"  500-900 gr." ]
        listino<<[nome:"  900-1.500 gr." ]
        listino<<[nome:"  1,500-3,000 gr." ]
        listino<<[nome:"  3.000 up" ]
        listino<<[nome:"SALMONE NORVEGESE PREAFFETTATO (NORVEGIAN SALMON SALAR PRESLICED)" ]
        listino<<[nome:"  500-900 gr." ]
        listino<<[nome:"  900-1.500 gr." ]
        listino<<[nome:"  1.500-3.000 gr." ]
        listino<<[nome:"SALMONE (SALMON SALAR)" ]
        listino<<[nome:"  Buste 50 gr." ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"SALMONE RITAGLI EXTRA (SALMON TRIMMINGS EXTRA )" ]
        listino<<[nome:"  Vaschetta 250 gr." ]
        listino<<[nome:"  Vaschetta 500 gr." ]
        listino<<[nome:"SALMONE RITAGLI (SALMON TRIMMINGS)" ]
        listino<<[nome:"  Vaschetta 250 gr." ]
        listino<<[nome:"  Vaschetta 500 gr." ]
        listino<<[nome:"SALMONE SCOZZESE INTERO (SCOTTISH SALMON SALAR WHOLESIDE)" ]
        listino<<[nome:"  500-900 gr." ]
        listino<<[nome:"  900-1.500 gr." ]
        listino<<[nome:"  1,500-3,000 gr." ]
        listino<<[nome:"SALMONE SCOZZESE PREAFFETTATO (SCOTTISH SALMON SALAR PRESLICED)" ]
        listino<<[nome:"  500-900 gr." ]
        listino<<[nome:"  900-1.500 gr." ]
        listino<<[nome:"  1.500-3.000 gr." ]
        listino<<[nome:"TROTA SALMONATA PREAFFETTATA (SMOKED SALMON TROUT PRESLICED)" ]
        listino<<[nome:"  Baffe 800 gr. circa" ]
        listino<<[nome:"  Buste 100 gr." ]
        listino<<[nome:"  Buste 200 gr." ]
        listino<<[nome:"TROTA SALMONATA INTERA (SMOKED SALMON TROUT PRESLICED)" ]
        listino<<[nome:"  Baffe 800 gr. circa" ]
        listino<<[nome:"  FILETTI DI MUGGINE AFFUMICATI INTERI (SMOKED MULLET WHOLESIDE)" ]
        listino<<[nome:"  Baffe" ]
        listino<<[nome:"FILETTI DI MUGGINE AFFUMICATI PREAFFETTATI SMOKED MULLET PRESLICED)" ]
        listino<<[nome:"  Baffe" ]
        listino<<[nome:"BOTTARGA DI TONNO EXTRA (DRIED TUNA ROE EXTRA)" ]
        listino<<[nome:"  Extra baffe 1-3 Kg." ]
        listino<<[nome:"  Piccola baffe 300-500 gr." ]
        listino<<[nome:"  Piccola baffe 100-300 gr." ]
        listino<<[nome:"  Macinata buste 500 gr." ]
        listino<<[nome:"  Macinata orcio 70 gr." ]
        listino<<[nome:"  Macinata orcio 40 gr." ]
        listino<<[nome:"POMODORI RIPIENI DI PESCE AFFUMICATO (DRIED TOMATOES STUFFED SMOKED FISH)" ]
        listino<<[nome:"  Orcio 290 gr." ]
        listino<<[nome:"  Orcio 540 gr." ]
        listino<<[nome:"  Vaso 2,900 gr." ]
        listino<<[nome:"PEPERONCINI RIPIENI DI PESCE AFFUMICATO E BOTTARGA DI TONNO (PEPERONCINI STUFFED SMOKED FISH AND TUNA ROE )" ]
        listino<<[nome:"  Vasetto 200 gr." ]
        listino<<[nome:"  Vasetto 540 gr." ]
        listino<<[nome:"  Vaso 2,900 gr." ]
        listino<<[nome:"CARCIOFINI RIPIENI DI PESCE AFFUMICATO E BOTTARGA DI MUGGINE (ARTICHOKES STUFFED SMOKED FISH AND DRIED MULLET ROE)" ]
        listino<<[nome:"  Orcio 285 gr." ]
        listino<<[nome:"  Vaso 1,500 gr." ]
        listino<<[nome:"CREMA DI PEPERONCINI, PESCE AFFUMICATO E BOTTARGA DI TONNO (PATE' PEPERONCINI SMOKED FISH AND TUNA ROE )" ]
        listino<<[nome:"  Vasetto 100 gr." ]
        listino<<[nome:"INVOLTINI DI MELANZANE RIPIENI DI PESCE AFFUMICATO (AUBERGINE ENVELOPES STUFFED SMOKED FISH)" ]
        listino<<[nome:"  Vasetto 200 gr." ]
        listino<<[nome:"FILETTI DI TONNO PINNA GIALLA SOTT’OLIO (TUNA FILETS ON OIL) “Ricetta sarda” “Sardinian Recipe”" ]
        listino<<[nome:"  vasetto gr. 200" ]
        listino<<[nome:"  vasetto gr. 300" ]
        listino<<[nome:"TONNO ROSSO SOTT’OLIO “RICETTA ANTICHE TONNARE DI SARDEGNA”" ]
        listino<<[nome:"  Tonno di corsa latta 1,800" ]
        listino<<[nome:"  Tonno di corsa latta 360 gr." ]
        listino<<[nome:"  Tarantello latta 360 gr." ]
        listino<<[nome:"  Ventresca latta 360 gr." ]
        listino<<[nome:"TENEREZZE DI POLPO Senza conservanti (OCTOPUS TENDERNESS without preservatives)" ]
        listino<<[nome:"  TENEREZZE DI POLPO Senza conservanti (OCTOPUS TENDERNESS without preservatives)" ]
        listino<<[nome:"CIUFFO DI POLPO COTTO A VAPORE Senza conservanti (WHOLESIDE OCTOPUS without preservatives)" ]
        listino<<[nome:"  CIUFFO DI POLPO COTTO A VAPORE Senza conservanti (WHOLESIDE OCTOPUS without preservatives)" ]
        listino<<[nome:"TENEREZZE DI MARE (SALAD TENDERNESS)" ]
        listino<<[nome:"  TENEREZZE DI MARE (SALAD TENDERNESS)" ]
        listino<<[nome:"TENEREZZE DI SPADA (SWORDFISH TENDERNESS)" ]
        listino<<[nome:"  TENEREZZE DI SPADA (SWORDFISH TENDERNESS)" ]
        listino<<[nome:"CARPACCIO DI SPADA (CARPACCIO OF SWORDFISH)" ]
        listino<<[nome:"  Vaschetta 120 gr." ]
        listino<<[nome:"CARPACCIO DI TONNO (CARPACCIO OF TUNA FISH)" ]
        listino<<[nome:"  Vaschetta 120 gr." ]
        listino<<[nome:"CARPACCIO DI CERNIA (CARPACCIO OF BASS)" ]
        listino<<[nome:"  Vaschetta 120 gr." ]
        listino<<[nome:"CARPACCIO DI STORIONE (CARPACCIO OF BELUGA STURGEON)" ]
        listino<<[nome:"  Vaschetta 120 gr." ]
        listino<<[nome:"INSALATA DI POLPO (OCTOPUS SALAD)" ]
        listino<<[nome:"  Vaschetta 150 gr." ]
        listino<<[nome:"INSALATA DI POLPO CARPACCIO (OCTOPUS SALAD CARPACCIO)" ]
        listino<<[nome:"  Vaschetta 150 gr." ]
        listino<<[nome:"INSALATA DI MARE (SEA SALAD)" ]
        listino<<[nome:"  Secchiello in marinatura" ]
        listino<<[nome:"  Secchiello in olio" ]
        listino<<[nome:"POLPO MARINATO A CARPACCIO (MARINATED OCTOPUS CARPACCIO)" ]
        listino<<[nome:"  Secchiello in marinatura" ]
        listino<<[nome:"  Secchiello in olio" ]
        listino<<[nome:"POLPO MARINATO (MARINATED OCTOPUS)" ]
        listino<<[nome:"  Secchiello in marinatura" ]
        listino<<[nome:"  Secchiello in olio" ]
        listino<<[nome:"INSALATA DI MARE (SEA SALAD)" ]
        listino<<[nome:"  Vaschetta in olio" ]
        listino<<[nome:"  Vaschetta in marinatura" ]
        listino<<[nome:"POLPO MARINATO (MARINATED OCTOPUS)" ]
        listino<<[nome:"  Vaschetta in olio" ]
        listino<<[nome:"  Vaschetta in marinatura" ]
        listino<<[nome:"INSALATA DI MARE (SEA SALAD)" ]
        listino<<[nome:"  Vaschetta in olio" ]
        listino<<[nome:"POLPO A CARPACCIO (OCTOPUS CARPACCIO)" ]
        listino<<[nome:"  Vaschetta in olio" ]
        listino<<[nome:"POLPO A TRANCI (OCTOPUS )" ]
        listino<<[nome:"  Vaschetta in olio" ]
        
        def prodottoId=0
        listino.each {it->
            if(it.nome.startsWith("  ")){
                Confezione c = new Confezione(prodotto: Prodotto.get(prodottoId), descrizione:it.nome.trim(), prezzo:10, peso:100)
                c.save(flush:true)
            }
            else{
                def nome = it.nome
                def index = it.nome.indexOf('(')
                if(index!=-1) {
                    nome = it.nome.substring(0, index)
                }
                
                Prodotto p = new Prodotto(
                    nome: nome, 
                    descrizione:it.nome, 
                    linea: Linea.first())
                p.save(flush:true)
                prodottoId = p.id
            }
        }
    }
*/    
}
