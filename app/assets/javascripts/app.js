angular.module('railsStripe2', ['ngRoute', 'templates'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
  //   //FRONT END ROUTES
    .when('/', {
      templateUrl: 'home/_home.html',
      controller: 'HomeController'
    })
    // .when('/home', {
    //   templateUrl: 'app/home/home.html',
    //   controller: 'HomeController'
    // })
    // .when('/submitted', {
    //   templateUrl: 'app/submitted/submitted.html',
    //   controller: 'SubmittedController'
    // });
}]);