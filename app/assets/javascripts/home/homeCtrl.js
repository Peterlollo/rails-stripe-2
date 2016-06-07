angular.module('railsStripe2')
.controller('HomeController', ['$scope', '$http', function($scope, $http) {

  $scope.user = {};
  function getUsers() {
    return $http.get('/users.json')
                .success(function(data){
                  console.log('Users Data: ', data);
                });
  }

  $scope.createUser = function(user) {
    console.log('user to be created: ', user);
    return $http.post('/users.json', JSON.stringify(user))
                .then(function(data) {
                  $scope.obj['users'].push(data);
                }, function(err) {
                  console.error('Error creating user: ', err);
                });
  }

  $scope.obj = {
   'one': 1,
   'two': 2,
   'users': []
  };


}]);