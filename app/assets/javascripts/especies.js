angular.module('insectopedia',[]).
controller("especies",['$scope','$http',function($scope,$http){
    $scope.actual;
    $scope.jjjj="ssaxsxas";
    $scope.ordenes=[];
    $scope.familias=[];
    $scope.generos=[];
    $scope.especies=[];
    
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
        $http.get('/insects.json?gender='+val).
        success(function(value){
            $scope.especies=[];
            for (var xx=0;xx<value.length;xx++){
                $scope.especies.push(value[xx]);    
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