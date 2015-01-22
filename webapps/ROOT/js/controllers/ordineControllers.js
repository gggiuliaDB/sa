'use strict';
var ordineApp = angular.module('ordineApp', ['utilityApp']);

ordineApp.controller('ordineController', function($scope, $rootScope, $http, $location) {
    
    $scope.predicate = 'descrizione';
    
    //inizializzazione valori
    $scope.init = function(url, id, confezioniOrdine, cancellazione){
        
        $scope.url=url;
        $scope.id=id;
        $scope.cancellazione=cancellazione; // se true faccio la delete, altrimenti metto a 0 la quantità
        $scope.confezioniOrdine = [];
        aggiornaQuantita(confezioniOrdine);
        /*
        $scope.confezioniOrdine = confezioniOrdine;
        $scope.totale=0;
        angular.forEach(confezioniOrdine, function(value, key) {
            $scope.totale += value.quantitaDisponibile * value.prezzo;
        });        
        $scope.costoSpedizione=calcolaCostoSpedizione($scope.totale);
        */        
    };
    
    //inizializzazione valori
    var aggiornaQuantita = function(confezioniOrdine){
        $scope.confezioniOrdine = confezioniOrdine;
        var totaleQuantita=0;
        var totalePrezzo=0;
        for(var i=0; i < confezioniOrdine.length; i++){
            totalePrezzo += confezioniOrdine[i].quantitaDisponibile * confezioniOrdine[i].prezzo;

            if(confezioniOrdine[i].unitaMisura=="UNITA")
                totaleQuantita += confezioniOrdine[i].quantitaDisponibile;
            else
                totaleQuantita += 1;
        }
        //$('#carrelloSize').html(totaleQuantita);
        $scope.totale = totalePrezzo;   
        $scope.costoSpedizione=calcolaCostoSpedizione($scope.totale);
    }       
    
    var save = function(){
        $http({
            method: 'PUT',
            url: $scope.url + '/confezioneOrdine/' + $scope.confezione.id + '.json',
            params: {quantita: $scope.confezione.quantita,
                     quantitaDisponibile: $scope.confezione.quantitaDisponibile},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
            aggiornaQuantita(response);            
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response.error_message;
        });
    }
    
    //se $scope.cancellazione faccio la delete, altrimenti metto a 0 la quantita
    $scope.eliminaConfezione = function(confezione){        
        if($scope.cancellazione){
            $http.delete($scope.url+'/confezioneOrdine/'+confezione.id+ '.json')
            .success(function(response, status, headers, config){
                $scope.confezioniOrdine = response;
                aggiornaQuantita($scope.confezioniOrdine);
            })
            .error(function(response, status, headers, config){
                alert(response.error_message);
            });
        }
        else{
            $http({
                method: 'PUT',
                url: $scope.url + '/confezioneOrdine/' + confezione.id + '.json',
                params: {quantitaDisponibile: 0},
                headers: {'Content-Type': 'application/json'}
            })
            .success(function(response, status, headers, config){
                aggiornaQuantita(response);            
            })
            .error(function(response, status, headers, config){
                $scope.error_message = response.error_message;
            });
        }
    };    

    $scope.changeQuantita = function(confezione){
        if(!isNumber(confezione.quantitaDisponibile))
            return;
        $scope.confezione = confezione;
        save();
    };
    
    $scope.aggiungiUno = function(confezione){
        if(isNaN(confezione.quantitaDisponibile))
            return;
        $scope.confezione = confezione;
        $scope.confezione.quantitaDisponibile = parseInt($scope.confezione.quantitaDisponibile) + 1;
        save();
    };
    
    $scope.togliUno = function(confezione){
        if(isNaN(confezione.quantitaDisponibile))
            return;
        if(confezione.quantitaDisponibile==0)
            return;
        
        $scope.confezione = confezione;
        $scope.confezione.quantitaDisponibile = parseInt($scope.confezione.quantitaDisponibile) - 1;
        save();
    };   
});
    

angular.bootstrap(document.getElementById("ordineApp"),['ordineApp']);

