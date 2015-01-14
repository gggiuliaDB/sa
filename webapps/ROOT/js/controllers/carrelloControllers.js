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
	
    $scope.init = function(url, controller, id, confezioniCarrello){
    	
    	$scope.url=url;
    	$scope.controller=controller;
    	$scope.id=id;
    	$scope.confezioniCarrello = [];
        $scope.confezioniCarrello = confezioniCarrello;
        $scope.totale=0;
        angular.forEach(confezioniCarrello, function(value, key) {
        	$scope.totale += value.quantita * value.prezzo;
    	});        
        $scope.costoSpedizione=calcolaCostoSpedizione($scope.totale);
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
    }
    
    var calcolaCostoSpedizione = function(totale){
        if(totale <= 50 ){
            return 8;
        }
        else if(totale <= 100 ){
            return 5;
        }
        return 0;
    }
    
    var save = function(){
    	$http({
            method: 'PUT',
            url: $scope.url + '/' + $scope.controller + '/' + $scope.confezioneCarrello.id + '.json',
            //url: $scope.url+'/confezioneCarrello/'+ $scope.confezioneCarrello.id+ '.json',
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
    	
    	//$http.delete($scope.url+'/confezioneCarrello/'+ confezioneCarrello.id+ '.json')
    	$http.delete($scope.url+'/'+$scope.controller+'/'+confezioneCarrello.id+ '.json')
        .success(function(response, status, headers, config){
            $scope.confezioniCarrello = response;
            //$scope.$apply();
            
            aggiornaQuantita($scope.confezioniCarrello);
        })
        .error(function(response, status, headers, config){
            alert(response.error_message);
        });
    };
    
    function isNumber(n) {
        'use strict';
        //n = n.replace(/\./g, '').replace(',', '.');
        return !isNaN(parseFloat(n)) && isFinite(n);
    }  
});
	

/*
carrelloApp.directive('onlyNum', function() {
    return function(scope, element, attrs) {

        var keyCode = [46,8,9,37,39,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110];
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
carrelloApp.directive('onlyDecimal', function() {
    return function(scope, element, attrs) {

        var keyCode = [46,8,9,37,39,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110,188,190];
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

carrelloApp.directive("comaDotConverter",function(){
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
carrelloApp.directive('ngConfirmClick', [
 function(){
     return {
         priority: 1,
         terminal: true,
         link: function (scope, element, attr) {        	 
        	 var msg = attr.ngConfirmClick || "Are you sure?";
        	 var clickAction = attr.ngClick;
        	 element.bind('click',function (event) {
                     if ( window.confirm(msg) ) {
                         scope.$eval(clickAction)
                     }
             });
         }
     };
 }]);
*/

angular.bootstrap(document.getElementById("carrelloApp"),['carrelloApp']);

