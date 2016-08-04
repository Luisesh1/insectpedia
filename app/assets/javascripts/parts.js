angular.module('insectopedia').
controller("partes",['$scope','$http',function($scope,$http){
    $scope.partesReq=[];
    $scope.partes=[];
    $scope.ordenes=[];
    $scope.familias=[];
    $scope.generos=[];
    $scope.especies=[];
    $scope.biomas=[];
    $scope.estados=[];
    $scope.municipios=[];
    $scope.cargarRespuesta= function(){
        url = '/buscar/partes.json?'
        if ($scope.parte!="" && $scope.parte!=null)
            url=url+'&parte_id='+$scope.parte;
        if ($scope.orden!="" && $scope.orden!=null)
            url=url+'&orden_id='+$scope.orden;
        if ($scope.familia!="" && $scope.familia!=null)
            url=url+'&familia_id='+$scope.familia;
        if ($scope.genero!="" && $scope.genero!=null)
            url=url+'&genero_id='+$scope.genero;
         if ($scope.especie!="" && $scope.especie!=null)
            url=url+'&especie_id='+$scope.especie;
         $http.get(url).
        success(function(value){
             $scope.partesReq=value;
             console.log(value);
             console.log(url);
             
        });
    };
    $scope.cargarPartes=function(){
        $http.get('/parts.json').
        success(function(value){
             $scope.partes=value;
        });
        $scope.cargarRespuesta();
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
             $scope.cargarRespuesta();
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
             $scope.cargarRespuesta();
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
            $scope.cargarRespuesta();
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
             $scope.cargarRespuesta();
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
            $scope.cargarRespuesta();
            console.log(value);
        });
    };
    
    $scope.cargarPartes();
    $scope.cargarOrdenes();
   
    
}]);