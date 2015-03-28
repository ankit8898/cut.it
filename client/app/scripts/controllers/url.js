'use strict';

/**
 * @ngdoc function
 * @name urlshortenerApp.controller:UrlCtrl
 * @description
 * # UrlCtrl
 * Controller of the urlshortenerApp
 */
app.controller('UrlCtrl', function ($scope,Url) {

  $scope.form = {url: null};

  Url.all().then(function(urls){
    $scope.urls = urls;
  });

  $scope.submit = function(){
    Url.create($scope.form).then(function(url){
      $scope.url = url;
      $scope.urls.push(url);
      $scope.form = {};
    });
  };

});
