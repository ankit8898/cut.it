'use strict';

/**
 * @ngdoc service
 * @name urlshortenerApp.url
 * @description
 * # url
 * Service in the urlshortenerApp.
 */
app.service('Url', function Url(Restangular) {
    // AngularJS will instantiate a singleton by calling "new" on this function
    var baseUrl = Restangular.all('api/urls');
    var shortenBaseUrl = Restangular.all('api/shorten');

    this.all = function(){
      return baseUrl.getList();
    };

    this.create = function(obj){
      return shortenBaseUrl.post(obj);
    };

    this.get = function(code) {
        return Restangular.one('api/url',code).get();
    };
  });
