app.controller("MainController", [
  "$scope",
  "DataService",
  "$http", "$route", "$rootScope", "pageTitle",
  function ($scope, DataService, $http, $route, $rootScope, pageTitle) {
    // Controller logic here
    $scope.dynamicTitle = 'United States Bir Tikendrajit University';
    $scope.title = pageTitle;
    $rootScope.dynamicTitle = $scope.title;


    // Listen for route changes
    // $rootScope.$on('$routeChangeSuccess', function(event, current, previous) {
    //     // Update title based on the current route
    //     if (current.$$route && current.$$route.title) {
    //         $scope.dynamicTitle = current.$$route.title;
    //     } else {
    //         $scope.dynamicTitle = 'United States Bir Tikendrajit University';
    //     }
    // });

    $scope.message = "Hello from MainController!";
    $scope.isHomePage = true;

    $http.get("admin/api/countries").then(
      function (response) {
        $scope.countries = response?.data?.data;
        //console.log("$scope.countries", $scope.countries);
      },
      function (error) {
        console.error("Error fetching countries:", error);
      }
    );

    $scope.formData = {}
    $scope.btndisabled = false;

    $scope.saveRequest = function (formId, subformData) {
      console.log("id", formId);
      $scope.btndisabled = true;
      //$scope.$apply();
      console.log("formData", $scope.formData);
      console.log("formData", subformData);
      if (typeof subformData !== 'object' || subformData === null) {
        $scope.errorMessage = 'Invalid form data.';
        $scope.btndisabled = false;
        // Use $timeout to clear the error message after a delay
        setTimeout(() => {
          $scope.errorMessage = '';

        }, 3000);
        return false;
      }

      if ($('#first_name').val() == '' || $('#last_name').val() == '' || $('#email').val() == '' || $('#mobile').val() == '' || $('#country').val() == '') {
        //if(subformData.first_name =='' || subformData.first_name =='' || subformData.first_name =='' ){
        $scope.btndisabled = false;
        $scope.errorMessage = 'Please fill the required filed.';

        setTimeout(() => {
          $scope.errorMessage = '';
        }, 3000);
        return false;
      }
      $scope.errorMessage = '';

      //if ( angular.element("#" + formId).valid() ) {
      $scope.successMessage = '';
      $http.post("admin/api/general", $scope.formData).then(
        function (response) {
          console.log('response', response)
          $scope.btndisabled = false;
        
          if (response?.data?.data) {
            $scope.successMessage = 'Thank you for your interest! We will get back to you shortly.';

            setTimeout(() => {
              $scope.successMessage = '';
              $route.reload();
            }, 5000);

          }


        },
        function (error) {
          console.error("Error fetching countries:", error);
          $scope.btndisabled = false;
        
        }
      );

      //}
    };

    $http.get("admin/api/general").then(
      function (response) {
        console.log('response', response)
        $scope.courses = response?.data?.data;
        console.log('$scope.course', $scope.course)
        $scope.courseAcademic = $scope.courses.filter((item) => item.category_id == 1);
        $scope.courseBechelor = $scope.courses.filter((item) => item.category_id == 2);
        $scope.courseMaster = $scope.courses.filter((item) => item.category_id == 3);
        console.log('$scope.courseAcademic', $scope.courseAcademic)

      },
      function (error) {
        console.error("Error fetching countries:", error);
      }
    );

  },
]);
