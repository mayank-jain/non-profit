root = global ? window

HomeControllers = ($scope, $resource) ->
  
  $scope.is_visible = true
  $scope.allClients={}
  
  $scope.newClient = ->
    $scope.is_visible = false
    $scope.client ={}
  
  $scope.back = ->
    $scope.is_visible = true
    
  $scope.submit = ->
    console.log $scope.client
    res = $resource('/clients',{})
    res.save {client: $scope.client}, (result)->
      $scope.is_visible = true
      $scope.getClient()
      
  $scope.getClient = ->
    res = $resource('/clients',{},{get_clients: {method: 'GET', isArray: true}})
    res.get_clients {}, (result)->
      $scope.allClients = result
      
    
root.HomeControllers = HomeControllers
