'use strict';

/**
 * @ngdoc function
 * @name urlshortenerApp.controller:UrlCtrl
 * @description
 * # UrlCtrl
 * Controller of the urlshortenerApp
 */
app.controller('FetchUrlCtrl', function ($scope,Url,$stateParams) {

  Url.get($stateParams.code).then(function(url){
    window.open(url.name,"_self")
  })
});
