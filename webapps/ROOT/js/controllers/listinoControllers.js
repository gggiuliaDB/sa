'use strict';

var listinoApp = angular.module('listinoApp', []);

listinoApp.controller('listinoController', function($scope, $rootScope, $http, $location) {
	$scope.init = function(url, confezioni){
    	$scope.url = url;
        $scope.confezioni = confezioni;  
    };
    
    $scope.edit = function(confezione){
        $scope.confezione = confezione;
        for (var i=0; i<$scope.confezioni.length; i++) {
        	$scope.confezioni[i].editing=false;
        }
        $scope.confezione.editing = true;
    };
  
    $scope.update = function(){
        $http({
            method: 'PUT',
            url: $scope.url+'/aggiornamentoListino/'+ $scope.confezione.id+ '.json',
            params: {id: $scope.confezione.id, prezzo: $scope.confezione.prezzo, sconto: $scope.confezione.sconto},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.error_message="";
            $scope.confezione = response;
            $scope.confezione.editing = false;
            for (var i=0; i<$scope.confezioni.length; i++) {
            	$scope.confezioni[i].editing=false;
            }
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response;  //.error_message;
        });
    };

    $scope.cancel = function(){
        $scope.confezione.editing = false;        
    };  
});

listinoApp.directive('onlyDecimal', function() {
    return function(scope, element, attrs) {

    	//46 è il tasto canc
    	var keyCode = [46,8,9,37,39,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110,188,190];
        element.bind("keydown", function(event) {
            console.log($.inArray(event.which, keyCode));
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

listinoApp.directive("comaDotConverter",function(){
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

angular.bootstrap(document.getElementById("listinoApp"),['listinoApp']);

