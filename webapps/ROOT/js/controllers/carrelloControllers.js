$( ".addToChart" ).click(function() {
    var id = this.id;    
	$.ajax({
			url: url,
            data:{'id': id, 'carrelloId': carrelloId, 'lang': lang},
			success: function(data) {
		        angular.element(document.getElementById('carrelloController')).scope().aggiornaConfezioni(data);
			    $('#myModal').modal();
		    },
		    error: function(request, status, error) {
		        alert(error)
		    }
	});	
});


'use strict';
var carrelloApp = angular.module('carrelloApp', ['utilityApp']);

carrelloApp.controller('carrelloController', function($scope, $rootScope, $http, $location) {
	
	$scope.predicate = 'descrizione';
	
    $scope.init = function(url, id, confezioniCarrello){
    	
    	$scope.url=url;
    	$scope.id=id;
    	$scope.confezioniCarrello = [];
        $scope.confezioniCarrello = confezioniCarrello;
        $scope.totale=0;
        angular.forEach(confezioniCarrello, function(value, key) {
        	$scope.totale += value.quantita * value.prezzo;
    	});        
        $scope.costoSpedizione=calcolaCostoSpedizione($scope.totale);
        $scope.iva=calcolaIva($scope.totale);        
    };
    
    $scope.aggiornaConfezioni = function(confezioniCarrello){
        $scope.confezioniCarrello = confezioniCarrello;
        aggiornaQuantita(confezioniCarrello);
        $scope.$apply();
    };
    
    var aggiornaQuantita = function(confezioniCarrello){
    	var totaleQuantita=0;
    	var totalePrezzo=0;
	    for(var i=0; i < confezioniCarrello.length; i++){
	    	totalePrezzo += confezioniCarrello[i].quantita * confezioniCarrello[i].prezzo;

	    	if(confezioniCarrello[i].unitaMisura=="UNITA")
	    		totaleQuantita += confezioniCarrello[i].quantita;
	    	else
	    		totaleQuantita += 1;
	    }
	    $('#carrelloSize').html(totaleQuantita);
	    $scope.totale = totalePrezzo;   
        $scope.costoSpedizione=calcolaCostoSpedizione($scope.totale);
        $scope.iva=calcolaIva($scope.totale);   
    }
    
    var save = function(){
    	$http({
            method: 'PUT',
            url: $scope.url + '/confezioneCarrello/' + $scope.confezioneCarrello.id + '.json',
            params: {quantita: $scope.confezioneCarrello.quantita},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
            aggiornaQuantita(response);            
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response.error_message;
        });
    }
    
    $scope.changeQuantita = function(confezioneCarrello){
    	if(!isNumber(confezioneCarrello.quantita))
			return;
    	$scope.confezioneCarrello = confezioneCarrello;
    	save();
    };
    
    $scope.aggiungiUno = function(confezioneCarrello){
    	if(isNaN(confezioneCarrello.quantita))
			return;
    	$scope.confezioneCarrello = confezioneCarrello;
    	$scope.confezioneCarrello.quantita = parseInt($scope.confezioneCarrello.quantita) + 1;
    	save();
    };
    
    $scope.togliUno = function(confezioneCarrello){
    	if(isNaN(confezioneCarrello.quantita))
			return;
    	if(confezioneCarrello.quantita==0)
			return;
    	
		$scope.confezioneCarrello = confezioneCarrello;
    	$scope.confezioneCarrello.quantita = parseInt($scope.confezioneCarrello.quantita) - 1;
    	save();
    };
    

    $scope.eliminaConfezione = function(confezioneCarrello){
    	
    	$http.delete($scope.url+'/confezioneCarrello/'+confezioneCarrello.id+ '.json')
        .success(function(response, status, headers, config){
            $scope.confezioniCarrello = response;
            aggiornaQuantita($scope.confezioniCarrello);
        })
        .error(function(response, status, headers, config){
            alert(response.error_message);
        });
    };
    
    /*function isNumber(n) {
        'use strict';
        //n = n.replace(/\./g, '').replace(',', '.');
        return !isNaN(parseFloat(n)) && isFinite(n);
    } */ 
    
    var calcolaIva = function(totale){
        
    	
        return (totale - (totale / 1.22) );
    }
});
	

angular.bootstrap(document.getElementById("carrelloApp"),['carrelloApp']);

