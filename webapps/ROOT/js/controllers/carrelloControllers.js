$( ".addToChart" ).click(function() {
    var id = this.id;    
	$.ajax({
			url: getValidPostcodeValuesURL,
            data:{'id': id, 'carrelloId': carrelloId},
			success: function(data) {
		        //alert(data)
			    angular.element(document.getElementById('carrelloController')).scope().aggiornaConfezioni(data);
	            $('#carrelloSize').html(data.length);
			    $('#myModal').modal();
		    },
		    error: function(request, status, error) {
		        alert(error)
		    }	
		    //$('#myModal').modal('toggle');
	});	
});


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
    
    $scope.aggiornaConfezioni= function(confezioniCarrello){
        $scope.confezioniCarrello = confezioniCarrello;
        $scope.$apply();
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
    

    $scope.eliminaConfezione = function(confezioneCarrello){
    	
    	$http.delete($scope.url+'/confezioneCarrello/'+ confezioneCarrello.id+ '.json')
        .success(function(response, status, headers, config){
            $scope.confezioniCarrello = response;
            $scope.$apply();
            
            $('#carrelloSize').html($scope.confezioniCarrello.length);
        })
        .error(function(response, status, headers, config){
            //$scope.error_message = response.error_message;
        });
    };
});
	
angular.bootstrap(document.getElementById("carrelloApp"),['carrelloApp']);

