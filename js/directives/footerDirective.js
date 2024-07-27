app.directive('footerDirective', function() {
    return {
      restrict: 'E',
      templateUrl: 'templates/footer.html',
      controller: function($scope) {
        // Footer controller logic here
        $scope.year = new Date().getFullYear();
      }
    };
  });
  