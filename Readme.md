##kt.it | <a>http://ktit.co</a>
<h4>Get Power of short urls!</h4>
<p>A url shortener</p>
![Alt text](https://raw.githubusercontent.com/ankit8898/kt.it/master/images/app-prod.png)



## Want to access the API directly ?

We have a light weight API (Beta) that can be used directly for shortening.  Read docs [here](http://www.ktit.co/#/docs)
##Installation

The application comes in two parts -

- <b>Client</b> - AngularJS application
- <b>Server</b> - Rails API

<h4> One command setup</h4>

Clone the code from [here](https://github.com/ankit8898/kt.it)
```ruby
$ cd kt.it
$ bundle install
#this will try to install client application node and bower packages and install rails app too
$ bundle exec rake setup 
```
<h4> Manual setup</h4>
If the one command setup fails.  You have to install both the apps manually .

````ruby
#Installing Client app
$ cd kt.it/client
$ npm install && bower install 
```
````ruby
#Installing Server app
$ cd kt.it/server
$ bundle install
$ bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed
```
<h4> Running application locally</h4>
Application root has a [Procfile](https://github.com/ankit8898/kt.it/blob/master/Procfile)  that runs both client and server locally . Run application via [foreman](https://github.com/ddollar/foreman)

```
$ foreman start
$ 11:13:17 client.1 | started with pid 4560
$ 11:13:17 server.1 | started with pid 4561

```
##Testing

We use rspec for testing rails api
```ruby
$ bundle exec rspec
................

Finished in 0.43356 seconds (files took 1.37 seconds to load)
16 examples, 0 failures
```
##Deployment

At present application is hosted on Heroku. You will have to be in collaborators to access it.

<h4>Heroku deployment</h4>
```ruby
#We have to build the client application.  It does a grunt build and copies everything in server/public
$ bundle exec rake client_build
# This deploys to heroky.  You have to be a collabotor
$ bundle exec rake deploy_heroku
```
<h4>Capistrano deployment</h4>

We have a capistrano script that is tested on deploying locally (On same machine)
```ruby
$ bundle exec cap staging deploy
```

## Want to contribute?

Our backlog has [#todo](https://github.com/ankit8898/kt.it/issues)



