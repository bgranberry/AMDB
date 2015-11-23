angular.module('amdb', ['ui.router'], ['templates'])

	.config(['$stateProvider','$urlRouterProvider',	function($stateProvider, $urlRouterProvider) {
  	$stateProvider
    	.state('anime', {
      		url: '/anime',
      		templateUrl: '/_anime.html',
      		controller: 'AnimeCtrl'
    	});

  	$urlRouterProvider.otherwise('anime');
	}])

	.factory('anime', ['$http', function($http) {
		o.getAll = function() {
			return $http.get('/anime.json').success(function(data){
				angular.copy(data, o.anime);
			})
		}
	}])



	