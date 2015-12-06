angular.module('amdb', ['templates'])

	.factory('anime', ['$http', function($http) {
		o.getAll = function() {
			return $http.get('/anime.json').success(function(data){
				angular.copy(data, o.anime);
			})
		}
	}])



	