angular.module('myApp')
  .controller('coursesController', function($scope, DataService, $http, $route, $routeParams,$rootScope, pageTitle, $sce) {
    // Controller logic here
    //$scope.isHomePage = false;
    $scope.dynamicTitle = 'United States Bir Tikendrajit University';
    $scope.title = pageTitle;
    $rootScope.dynamicTitle = $scope.title;

    
    $scope.courseTemplateName = 'templates/course-content.html'; 
    //$scope.courseTemplateName = 'template.html';
    $scope.getCourseTemplateUrl = function () {
      return $scope.courseTemplateName;
    };
    


    $http.get("admin/api/general").then(
      function (response) {
        console.log('response', response)
        $scope.courses = response?.data?.data;
        console.log('$scope.course', $scope.course)
        if(!$routeParams.id){
          $scope.courseAcademic = $scope.courses.filter( (item) => item.category_id == 1 );
          $scope.courseBechelor = $scope.courses.filter( (item) => item.category_id == 2 );
          $scope.courseMaster = $scope.courses.filter( (item) => item.category_id == 3 );
          console.log('$scope.courseAcademic', $scope.courseAcademic)
        }

        if($routeParams.id){
          const courseDetail = $scope.courses.filter( (item) => item.slug_name == $routeParams.id );
          $scope.courseDetail = courseDetail?.[0] 
          console.log('$routeParams.id', $routeParams.id)
          console.log('$scope.courseDetail', $scope.courseDetail)
          
          //$scope.courseTemplateNumber = 'templates/course/course_'+$scope.courseDetail.id+'.html'
          $scope.pageContent = $sce.trustAsHtml($scope.courseDetail.page_content);

        }
        
      },
      function (error) {
        console.error("Error fetching countries:", error);
      }
    );
    

  });
