angular.module('myApp')
  .controller('AboutController', function($scope, pageTitle, $rootScope) {
    // Controller logic here
    $scope.isHomePage = false;

    $scope.dynamicTitle = 'United States Bir Tikendrajit University';
    //$scope.title = 'About Us';
    $scope.title = pageTitle;
    console.log('$scope.title',$scope.title)
    $rootScope.dynamicTitle = $scope.title;



  });
