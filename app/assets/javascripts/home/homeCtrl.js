angular.module('railsStripe2')
.controller('HomeController', ['$scope', function($scope){
  function init(){
    console.log('Home Controller Connected');
  };
  init();
  $scope.obj = {
   'one': 1,
   'two': 2};


}]);