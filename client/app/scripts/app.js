'use strict';

/**
 * @ngdoc overview
 * @name urlshortenerApp
 * @description
 * # urlshortenerApp
 *
 * Main module of the application.
 */
var app = angular.module('urlshortenerApp', ['restangular','ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {


  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'views/home.html',
      controller: 'UrlCtrl'
    })

    .state('apiDoc', {
      url: '/docs',
      templateUrl: 'views/api_doc.html',
      controller: 'ApiDocCtrl'
    })
    .state('url', {
      url: '/:code',
      controller: 'FetchUrlCtrl'
    })

});
