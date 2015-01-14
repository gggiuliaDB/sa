'use strict';
var utilityApp = angular.module('utilityApp', []);

utilityApp.directive('onlyNum', function() {
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

utilityApp.directive('onlyDecimal', function() {
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

utilityApp.directive("comaDotConverter",function(){
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

utilityApp.directive('ngConfirmClick', [
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