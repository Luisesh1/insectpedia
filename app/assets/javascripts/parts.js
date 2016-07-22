angular.module('insectopedia',[]).
controller("partes",['$scope','$http',function($scope,$http){
    $scope.actual="";
    $scope.partes=[];
    $scope.ordenes=[];
    $scope.familias=[];
    $scope.generos=[];
    $scope.especies=[];
    $scope.biomas=[];
    $scope.estados=[];
    $scope.municipios=[];
    
    $scope.cargarPartes=function(){
        $http.get('/parts.json').
        success(function(value){
             $scope.partes=value;
        });
    };
     $scope.cargarOrdenes=function(){
        $http.get('/orders.json').
        success(function(value){
             $scope.ordenes=value;
        });
    };
    $scope.cargarFamilias=function(val){
        $http.get('/families/'+val+'.json').
        success(function(value){
             $scope.familias=[];
             for (var xx=0;xx<value.length;xx++){
                $scope.familias.push(value[xx]);    
             }
             
             console.log(value);
        });
    };
     $scope.cargarGeneros=function(val){
        $http.get('/genders/'+val+'.json').
        success(function(value){
             $scope.generos=[];
           for (var xx=0;xx<value.length;xx++){
                $scope.generos.push(value[xx]);    
             }
             console.log(value);
        });
    };
     $scope.cargarEspecies=function(val){
        $http.get('/insects.json?gender='+val+'.json').
        success(function(value){
            $scope.especies=[];
            for (var xx=0;xx<value.length;xx++){
                $scope.especies.push(value[xx]);    
             }
            console.log(value);
        });
    };
    
   
    $scope.cargarEstados=function(val){
        $http.get('/states/'+val+'.json').
        success(function(value){
             $scope.estados=[];
           for (var xx=0;xx<value.length;xx++){
                $scope.estados.push(value[xx]);    
             }
             console.log(value);
        });
    };
    $scope.cargarMunicipios=function(val){
        $http.get('/municipes/'+val+'.json').
        success(function(value){
             $scope.municipios=[];
           for (var xx=0;xx<value.length;xx++){
                $scope.municipios.push(value[xx]);    
             }
             console.log(value);
        });
    }; $scope.cargarBiomas=function(val){
        $http.get('/biomes/'+val+'.json').
        success(function(value){
             $scope.biomas=[];
           for (var xx=0;xx<value.length;xx++){
                $scope.biomas.push(value[xx]);    
             }
             console.log(value);
        });
    };
    
    
    $scope.cargarInsecto=function(val){
        $http.get('/insects/'+val+'.json').
        success(function(value){
            $scope.actual=value;
            console.log(value);
        });
    };
    
    $scope.cargarPartes();
    $scope.cargarOrdenes();
   
    
}]);