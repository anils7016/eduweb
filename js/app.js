var app = angular.module('myApp', ['ngRoute']);

app.config(function($routeProvider, $locationProvider) {
  $routeProvider
    .when('/', {
      templateUrl: 'templates/home.html?v=12',
      controller: 'MainController',
      title: 'Home',
      resolve: {
        pageTitle: function() {
            return 'Home';
        }
      }
    })
    .when('/about-us', {
      templateUrl: 'templates/about.html',
      controller: 'AboutController',
      title: 'About us',
      resolve: {
        pageTitle: function() {
            return 'About Us';
        }
      }

    })
    .when('/contact-us', {
      templateUrl: 'templates/contact-us.html?v=2',
      controller: 'AboutController',
      title: 'Contact us',
      resolve: {
        pageTitle: function() {
            return 'Contact us';
        }
      }
    })
    .when('/courses', {
      templateUrl: 'templates/all-courses.html',
      controller: 'coursesController',
      title: 'Courses',
      resolve: {
        pageTitle: function() {
            return 'Courses';
        }
      }
    })
    .when('/courses/:id', {
      templateUrl: 'templates/course-detail.html',
      controller: 'coursesController',
      title: 'Course',
      resolve: {
        pageTitle: function() {
            return 'Course';
        }
      }
    })
    .otherwise({
      redirectTo: '/'
    });
    // $locationProvider.html5Mode({
    //     enabled: true,
    //     requireBase: true,
    //     baseHref: '/eduniversity/'
    // });

  // Enable HTML5 mode
  $locationProvider.html5Mode(true);
});

app.run(function($rootScope, $route) {
  $rootScope.$on('$routeChangeSuccess', function(event, current, previous) {
      if (current.$$route && current.$$route.controller) {
          var controller = $route.current.controller;
          console.log('$rootScope.controller',controller)
          
          if (controller) {
              // Check if the controller has a defined title
              $rootScope.dynamicTitle = controller.title;
              console.log('$rootScope.dynamicTitle',$rootScope.dynamicTitle)
          }
      }
  });
});

