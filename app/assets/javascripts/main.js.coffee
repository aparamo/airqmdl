# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
app = angular.module("Main", ["ngResource"])

app.factory "Node", ["$resource", ($resource) ->
  $resource("/nodes/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@MainCtrl = ["$scope", "Node", ($scope, Node) ->
  $scope.nodes = Node.query()
  
  $scope.addNode = ->
    node = Node.save($scope.newNode)
    $scope.nodes.push(node)
    $scope.newNode = {}
    
  $scope.drawWinner = ->
    pool = []
    angular.forEach $scope.nodes, (node) ->
      pool.push(node) if !node.winner
    if pool.length > 0
      node = pool[Math.floor(Math.random()*pool.length)]
      node.winner = true
      node.$update()
      $scope.lastWinner = node
]