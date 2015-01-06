'use strict';
var ordineApp = angular.module('ordineApp', []);

ordineApp.directive('onlyNum', function() {
    return function(scope, element, attrs) {

        var keyCode = [8,9,37,39,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110];
        element.bind("keydown", function(event) {
            //console.log($.inArray(event.which,keyCode));
            if($.inArray(event.which,keyCode) == -1) {
                scope.$apply(function(){
                    scope.$eval(attrs.onlyNum);
                    event.preventDefault();
                });
                event.preventDefault();
            }
        });
    };
});
ordineApp.directive('onlyDecimal', function() {
    return function(scope, element, attrs) {

        var keyCode = [8,9,37,39,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110,188,190];
        element.bind("keydown", function(event) {
            //console.log($.inArray(event.which, keyCode));
            if($.inArray(event.which, keyCode) == -1) {
                scope.$apply(function(){
                    scope.$eval(attrs.onlyDecimal);
                    event.preventDefault();
                });
                event.preventDefault();
            }
        });
    };
});

ordineApp.directive("comaDotConverter",function(){
	   return {
	            require: 'ngModel',
	            link: function (scope, element, attrs, modelCtrl) {
	              
	                modelCtrl.$parsers.push(function(inputValue) {
	                    
	                    if (typeof (inputValue) == "undefined") return '';
	                    var transformedInput = inputValue.replace(/,/g,'.');
	                    
	                    if (transformedInput != inputValue) {
	                        modelCtrl.$setViewValue(transformedInput);
	                        modelCtrl.$render();
	                    }

	                    return transformedInput;
	                });
	            }
	        };	  
	});

ordineApp.controller('ordineController', function($scope, $rootScope, $http, $location) {
	
	$scope.predicate = 'descrizione';
	
    $scope.init = function(url, id, confezioniOrdine){
    	$scope.url=url;
    	$scope.id=id;
    	$scope.confezioniOrdine = [];
        $scope.confezioniOrdine = confezioniOrdine;
        $scope.totale=0;
        angular.forEach(confezioniOrdine, function(value, key) {
        	$scope.totale += value.quantita * value.prezzo;
    	});        
    };
    
    $scope.aggiornaConfezioni = function(confezioniOrdine){
        $scope.confezioniOrdine = confezioniOrdine;
        aggiornaQuantita(confezioniOrdine);
        $scope.$apply();
    };
    
    var aggiornaQuantita = function(confezioniOrdine){
    	var totaleQuantita=0;
    	var totalePrezzo=0;
	    for(var i=0; i < confezioniOrdine.length; i++){
	    	totalePrezzo += confezioniCarrello[i].quantita * confezioniOrdine[i].prezzo;

	    	if(confezioniOrdine[i].unitaMisura=="UNITA")
	    		totaleQuantita += confezioniOrdine[i].quantita;
	    	else
	    		totaleQuantita += 1;
	    }
	    $('#carrelloSize').html(totaleQuantita);
	    $scope.totale = totalePrezzo;
    }
    
    var save = function(){
    	$http({
            method: 'PUT',
            url: $scope.url+'/confezioneOrdine/'+ $scope.confezioneOrdine.id+ '.json',
            params: {quantita: $scope.confezioneOrdine.quantita},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
            aggiornaQuantita(response);            
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response.error_message;
        });
    }
    
    $scope.changeQuantita = function(confezioneOrdine){
    	if(!isNumber(confezioneOrdine.quantita))
			return;
    	$scope.confezioneOrdine = confezioneOrdine;
    	save();
    };
    
    $scope.aggiungiUno = function(confezioneOrdine){
    	if(isNaN(confezioneOrdine.quantita))
			return;
    	$scope.confezioneOrdine = confezioneOrdine;
    	$scope.confezioneOrdine.quantita = parseInt($scope.confezioneOrdine.quantita) + 1;
    	save();
    };
    
    $scope.togliUno = function(confezioneOrdine){
    	if(isNaN(confezioneOrdine.quantita))
			return;
    	if(confezioneOrdine.quantita==0)
			return;
    	
		$scope.confezioneOrdine = confezioneOrdine;
    	$scope.confezioneOrdine.quantita = parseInt($scope.confezioneOrdine.quantita) - 1;
    	save();
    };
    

    $scope.eliminaConfezione = function(confezioneOrdine){
    	
    	$http.delete($scope.url+'/confezioneOrdine/'+ confezioneOrdine.id+ '.json')
        .success(function(response, status, headers, config){
            $scope.confezioniOrdine = response;
            //$scope.$apply();
            
            aggiornaQuantita($scope.confezioniOrdine);
            //$('#carrelloSize').html($scope.confezioniCarrello.length);
        })
        .error(function(response, status, headers, config){
            //$scope.error_message = response.error_message;
        });
    };
    
    function isNumber(n) {
        'use strict';
        //n = n.replace(/\./g, '').replace(',', '.');
        return !isNaN(parseFloat(n)) && isFinite(n);
    }   
    
});
	
angular.bootstrap(document.getElementById("ordineApp"),['ordineApp']);

