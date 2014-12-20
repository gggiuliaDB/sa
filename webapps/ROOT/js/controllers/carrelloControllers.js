'use strict';
var carrelloApp = angular.module('carrelloApp', []);
carrelloApp.controller('carrelloController', function($scope, $rootScope, $http, $location) {
    
    $scope.init = function(url, id, confezioniCarrello){
    	$scope.url=url;
    	$scope.id=id;
    	$scope.confezioniCarrello = [];
        $scope.confezioniCarrello = confezioniCarrello;
        
    };
    
    $scope.changeQuantita = function(confezioneCarrello){
    	$scope.confezioneCarrello = confezioneCarrello;
    	$http({
            method: 'PUT',
            url: $scope.url+'/confezioneCarrello/'+ $scope.confezioneCarrello.id+ '.json',
            params: {quantita: $scope.confezioneCarrello.quantita},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.confezioneCarrello = response;        	
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response.error_message;
        });
    };
});
angular.bootstrap(document.getElementById("carrelloApp"),['carrelloApp']);

