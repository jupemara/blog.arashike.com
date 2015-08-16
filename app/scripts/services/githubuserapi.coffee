'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.GithubUser
 # @description
 # # GithubUser
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'GithubUserApiService', ($http, apiEndpoint) ->
    return ({
      username
    }) ->
      return $http.get("#{apiEndpoint}/users/#{username}")
        .then (res) ->
          return res
        .then (res) ->
          return res