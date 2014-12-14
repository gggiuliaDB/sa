package it.ggg.sa.acquisto

import it.ggg.sa.prodotto.Confezione;
import it.ggg.sa.prodotto.Prodotto;
import it.ggg.sa.security.User;

import java.util.Date;

class Acquisto {

    User utente
    Confezione confezione
    Long quantita
    Date dateCreated
    StatoPagamento statoPagamento
    static constraints = {
    }
}
