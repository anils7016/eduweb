app.directive('headerDirective', function() {
  return {
    restrict: 'E',
    templateUrl: 'templates/header.html',
    scope: {
      isHomePage: '=?' // Optional two-way binding for the attribute
    },
    controller: function($scope, $attrs) {
      // Check if isHomePage is defined, otherwise default to false
      $scope.isHomePage = angular.isDefined($attrs.isHomePage) ? $scope.isHomePage : false;

      // Use isHomePage in your directive logic
      $scope.showHeader = $scope.isHomePage;
      $scope.menuOpen = false;
      console.log("ANNNNN=>", $scope.menuOpen)

        $scope.toggleMenu = function() {
            $scope.menuOpen = !$scope.menuOpen;
        };

        $scope.closeMenu = function() {
          $scope.menuOpen = false;
        };

        // $document.on('click', function(event) {
        //   if (!$scope.menuOpen) {
        //     return; // If menu is already closed, do nothing
        //   }
      
        //   var isClickedElementChildOfPopup = angular.element(event.target).closest('.mobilemenu').length > 0;
      
        //   if (!isClickedElementChildOfPopup) {
        //     $scope.$apply(function() {
        //       $scope.menuOpen = false;
        //     });
        //   }
        // });
      

    }
  };
});
