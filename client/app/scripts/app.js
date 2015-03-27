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

app.config(function($stateProvider, $urlRouterProvider,$locationProvider) {


  $urlRouterProvider.otherwise("/home");

  $stateProvider
    .state('home', {
      url: "/home",
      templateUrl: "views/home.html",
      controller: "UrlCtrl"
    })

    .state("contacts", {
      url: "/:code",
      controller: "FetchUrlCtrl"
    })

});
