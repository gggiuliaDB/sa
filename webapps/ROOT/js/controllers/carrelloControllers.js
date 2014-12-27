'use strict';
var carrelloApp = angular.module('carrelloApp', []);
carrelloApp.directive('onlyDigits', function () {
    return {
      require: 'ngModel',
      restrict: 'A',
      link: function (scope, element, attr, ctrl) {
        function inputValue(val) {
          if (val) {
            var digits = val.replace(/[^0-9]/g, '1');

            if (digits !== val) {
              ctrl.$setViewValue(digits);
              ctrl.$render();
            }
            return parseInt(digits,10);
          }
          return undefined;
        }            
        ctrl.$parsers.push(inputValue);
      }
    }
});    
carrelloApp.controller('carrelloController', function($scope, $rootScope, $http, $location) {
	
    $scope.init = function(url, id, confezioniCarrello){
    	$scope.url=url;
    	$scope.id=id;
    	$scope.confezioniCarrello = [];
        $scope.confezioniCarrello = confezioniCarrello;
        $scope.totale=0;
        angular.forEach(confezioniCarrello, function(value, key) {
        	$scope.totale += value.quantita * value.prezzo;
    	});        
    };
    
    var save = function(){
    	$http({
            method: 'PUT',
            url: $scope.url+'/confezioneCarrello/'+ $scope.confezioneCarrello.id+ '.json',
            params: {quantita: $scope.confezioneCarrello.quantita},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.totale = response;     
        	
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response.error_message;
        });
    }
    
    $scope.changeQuantita = function(confezioneCarrello){
    	if(isNaN(confezioneCarrello.quantita))
			return;
    	$scope.confezioneCarrello = confezioneCarrello;
    	save();
    };
    
    $scope.aggiungiUno = function(confezioneCarrello){
    	if(isNaN(confezioneCarrello.quantita))
			return;
    	$scope.confezioneCarrello = confezioneCarrello;
    	$scope.confezioneCarrello.quantita = $scope.confezioneCarrello.quantita + 1;
    	save();
    };
    $scope.togliUno = function(confezioneCarrello){
    	if(isNaN(confezioneCarrello.quantita))
			return;
    	if(confezioneCarrello.quantita==0)
			return;
    	
		$scope.confezioneCarrello = confezioneCarrello;
    	$scope.confezioneCarrello.quantita = $scope.confezioneCarrello.quantita - 1;
    	save();
    };
    
    
//    $rootScope.$on('$includeContentRequested', function(){
//    	$( ".spinner" ).spinner();
//    });
    
});
	
angular.bootstrap(document.getElementById("carrelloApp"),['carrelloApp']);

