'use strict';

$( "#createProdotto" ).click(function() {
    $.ajax({
            url: urlCreate,
            data:{},
            success: function(data) {
                angular.element(document.getElementById('prodottoController')).scope().aggiornaProdotto(data, true);
                $('#collapseProdotto').collapse('show');
            },
            error: function(request, status, error) {
                alert(error)
            }
    }); 
});
$( ".editProdotto" ).click(function() {
    var id = this.id;    
    $.ajax({
            url: urlEdit,
            data:{id: id},
            success: function(data) {
                angular.element(document.getElementById('prodottoController')).scope().aggiornaProdotto(data, false);
                $('#collapseProdotto').collapse('show');
            },
            error: function(request, status, error) {
                alert(error)
            }
    }); 
});
$( "#annulla" ).click(function() {
    $('#collapseProdotto').collapse('hide');
});


$( ".addI18" ).click(function() {
    var idProdotto = angular.element(document.getElementById('prodottoController')).scope().prodotto.id;    
    $.ajax({
            url: urlAddI18,
            data:{idProdotto: idProdotto},
            success: function(data) {
                angular.element(document.getElementById('prodottoController')).scope().aggiornaI18(data);
            },
            error: function(request, status, error) {
                alert(error)
            }
    }); 
});
$( ".addConfezione" ).click(function() {
    var idProdotto = angular.element(document.getElementById('prodottoController')).scope().prodotto.id;    
    $.ajax({
            url: urlAddConfezione,
            data:{idProdotto: idProdotto},
            success: function(data) {
                angular.element(document.getElementById('prodottoController')).scope().aggiornaConfezioni(data);
            },
            error: function(request, status, error) {
                alert(error)
            }
    }); 
});

var prodottoApp = angular.module('prodottoApp', ['utilityApp']);

prodottoApp.controller('prodottoController', function($scope, $rootScope, $http, $location) {
	
    $scope.init = function(url){
        $scope.url = url;

        $scope.linee = [
            { label: 'Linea Sarda affumicati', value: 'SA'},
            { label: 'Linea Delizie di Sardegna', value: 'DS'}
        ];
        $scope.tipiProdotto = [
            { label: 'Prodotti di mare', value: 'M'},
            { label: 'Prodotti di terra', value: 'T'}
        ];
        $scope.tipiUnitaMisura = [
            { label: 'Prezzo al chilo', value: 'KG', label1:'/ kg'},
            { label: 'Prezzo a confezione', value: 'UNITA', label1:'cad.'}
        ];
    };
    
    $scope.aggiornaProdotto = function(prodotto, nuovo){      
        $scope.prodotto = prodotto;
        $scope.prodotto.linea = $scope.trovaLinea($scope.prodotto.linea);
        $scope.prodotto.tipoProdotto = $scope.trovaTipoProdotto($scope.prodotto.tipoProdotto);

        for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
	        $scope.prodotto.confezioni[i].unitaMisura = $scope.trovaTipoUnitaMisura($scope.prodotto.confezioni[i].unitaMisura);
	    }
        $scope.nuovo=nuovo;
        $scope.titolo="Modifica prodotto"; 
        if(nuovo){
            $scope.titolo="Nuovo prodotto"; 
            for (var i=0; i<$scope.prodotto.internazionalizzazioni.length; i++) {
                $scope.prodotto.internazionalizzazioni[i].editing=true;    
            }           
            for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
                $scope.prodotto.confezioni[i].editing=true;    
            }
        }
        $scope.$apply();
    };

    $scope.aggiornaI18 = function(internazionalizzazione){      
    	$scope.prodotto.internazionalizzazioni.push(internazionalizzazione);
    	for (var i=0; i<$scope.prodotto.internazionalizzazioni.length; i++) {
            if($scope.prodotto.internazionalizzazioni[i].id == internazionalizzazione.id)
            	$scope.prodotto.internazionalizzazioni[i].editing=true;    
        }		
        $scope.i18 = internazionalizzazione;
    	$scope.$apply();
	};

	$scope.aggiornaConfezioni = function(confezione){      
		$scope.prodotto.confezioni.push(confezione);
		for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
            if($scope.prodotto.confezioni[i].id == confezione.id)
            	$scope.prodotto.confezioni[i].editing=true;    
        }
		confezione.unitaMisura = $scope.trovaTipoUnitaMisura(confezione.unitaMisura);

        $scope.confezione = confezione;
		$scope.$apply();
	};

    $scope.editI18 = function(i18){
        $scope.i18 = i18;
        for (var i=0; i<$scope.prodotto.internazionalizzazioni.length; i++) {
        	$scope.prodotto.internazionalizzazioni[i].editing=false;
        }
        $scope.i18.editing = true;
    };
  
    $scope.updateI18 = function(){
        $http({
            method: 'PUT',
            url: $scope.url+'/internazionalizzazioneProdotto/aggiornaI18/'+$scope.i18.id,
            params: {
            	id: $scope.i18.id, 
            	nome: $scope.i18.nome, 
            	note: $scope.i18.note, 
                ingredienti: $scope.i18.ingredienti, 
                comeGustarlo: $scope.i18.comeGustarlo, 
                conservazione: $scope.i18.conservazione},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.error_message="";
            $scope.i18 = response;
            $scope.i18.editing = false;
            for (var i=0; i<$scope.prodotto.internazionalizzazioni.length; i++) {
            	$scope.prodotto.internazionalizzazioni[i].editing=false;
            }
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response;  
        });
    };

    $scope.cancelI18 = function(){ 
        $scope.i18.editing = false;  
    };  

    $scope.editConfezione = function(confezione){
        $scope.confezione = confezione;
        for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
        	$scope.prodotto.confezioni[i].editing=false;
        }
        $scope.confezione.editing = true;
    };
  
    $scope.updateConfezione = function(){
        $http({
            method: 'PUT',
            url: $scope.url+'/confezione/aggiornaConfezione/'+$scope.confezione.id,
            params: {
            	id: $scope.confezione.id, 
            	nome: $scope.confezione.nome, 
            	peso: $scope.confezione.peso, 
                prezzo: $scope.confezione.prezzo, 
                sconto: $scope.confezione.sconto, 
                unitaMisura: $scope.confezione.unitaMisura.value},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.error_message="";
            $scope.confezione = response;
            $scope.confezione.editing = false;
            for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
            	$scope.prodotto.confezioni[i].editing=false;
            }
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response;  
        });
    };

    $scope.cancelConfezione = function(){ 
        $scope.confezione.editing = false;  
    };  
    $scope.trovaLinea = function(lineaId){
        for (var i=0; i<$scope.linee.length; i++) {
            if($scope.linee[i].value==lineaId)
                return $scope.linee[i];
        }
        return null;
    };

    $scope.trovaTipoProdotto = function(tipoId){
        for (var i=0; i<$scope.tipiProdotto.length; i++) {
            if($scope.tipiProdotto[i].value==tipoId)
                return $scope.tipiProdotto[i];
        }
        return null;
    };

    $scope.trovaTipoUnitaMisura = function(unitaMisura){
        for (var i=0; i<$scope.tipiUnitaMisura.length; i++) {
            if($scope.tipiUnitaMisura[i].value==unitaMisura)
                return $scope.tipiUnitaMisura[i];
        }
        return null;
    };

    /*$scope.add = function(){
      	var f = document.getElementById('file').files[0];
      	r = new FileReader();
		r.onloadend = function(e){
        	$scope.data = e.target.result;
      	}
      	r.readAsBinaryString(f);
    }*/

    $scope.eliminaConfezione = function(confezione){
        $http({
            method: 'PUT',
            url: $scope.url+'/confezione/eliminaConfezione/'+confezione.id,
            params: {id: confezione.id},
            headers: {'Content-Type': 'application/json'}
        })
        .success(function(response, status, headers, config){
        	$scope.error_message="";
            $scope.prodotto.confezioni = response;
            if($scope.nuovo){
	            for (var i=0; i<$scope.prodotto.confezioni.length; i++) {
	                $scope.prodotto.confezioni[i].editing=true;    
	            }
	        }
        })
        .error(function(response, status, headers, config){
            $scope.error_message = response;  
        });
    };

});

angular.bootstrap(document.getElementById("prodottoApp"),['prodottoApp']);

