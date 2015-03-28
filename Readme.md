##kt.it | <a>http://ktit.co</a>
<h4>Get Power of short urls!</h4>
<p>A url shortener</p>
![Alt text](https://raw.githubusercontent.com/ankit8898/kt.it/master/images/app-prod.png)




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
Application root has a Procfile that runs both client and server locally . Run application via [foreman](https://github.com/ddollar/foreman)

```
$ foreman start
$ 11:13:17 client.1 | started with pid 4560
$ 11:13:17 server.1 | started with pid 4561

```
##Testing

We use rspec for testing rails api
```

```


##Deploy

```
```


