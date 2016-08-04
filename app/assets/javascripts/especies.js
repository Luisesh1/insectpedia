angular.module('insectopedia',[]).
controller("especies",['$scope','$http',function($scope,$http){
    $scope.actual;
    $scope.ordenes=[];
    $scope.familias=[];
    $scope.generos=[];
    $scope.especies=[];
    $scope.partesReq=[];
    $scope.cargarRespuesta= function(){
        url = '/buscar/especie.json?'
        if ($scope.orden!="" && $scope.orden!=null)
            url=url+'&orden_id='+$scope.orden;
        if ($scope.familia!="" && $scope.familia!=null)
            url=url+'&familia_id='+$scope.familia;
        if ($scope.genero!="" && $scope.genero!=null)
            url=url+'&genero_id='+$scope.genero;
         if ($scope.especie!="" && $scope.especie!=null)
            url=url+'&especie_id='+$scope.especie;
            console.log(url);
         $http.get(url).
        success(function(value){
             $scope.partesReq=value;
             console.log(value);
             
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
             // $('#mapa').attr('src', 'https://insectopedia-luisesh11.c9users.io/maps/show?orden_id='+val);
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
             // $('#mapa').attr('src', 'https://insectopedia-luisesh11.c9users.io/maps/show?familia_id='+val);
              $scope.cargarRespuesta();
             console.log(value);
        });
    };
     $scope.cargarEspecies=function(val){
        $http.get('/insects.json?gender='+val).
        success(function(value){
            $scope.especies=[];
            for (var xx=0;xx<value.length;xx++){
                $scope.especies.push(value[xx]);    
             }
             // $('#mapa').attr('src', 'https://insectopedia-luisesh11.c9users.io/maps/show?genero_id='+val);
              $scope.cargarRespuesta();
            console.log(value);
        });
    };
    $scope.cargarInsecto=function(val){
        $http.get('/insects/'+val+'.json').
        success(function(value){
            $scope.actual=value;
            $('#mapa').attr('src', 'https://insectopedia-luisesh11.c9users.io/maps/show?insecto_id='+val);
            console.log(value);
            $scope.partesReq=[];
        });
    };
    
   
    $scope.cargarOrdenes();
    
}]);