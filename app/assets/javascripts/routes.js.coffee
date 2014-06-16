
angular.module("demoApp", ['ngRoute', 'ngResource'])
  .config ["$routeProvider", ($routeProvider) ->
    $routeProvider
    .when "/",
          controller: "HomeControllers"
          templateUrl: "/assets/templates/new.html"
    ]
