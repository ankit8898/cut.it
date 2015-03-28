require 'awesome_print'

task :setup do
  ap "*** Starting the setup of kt.it *** "
  begin
    Rake::Task["client_setup"].execute
    Rake::Task["server_setup"].execute
    ap "*** Everything looks good! *** "
    ap "Start your application from `foreman start`.  Don't have foreman installed?"
    ap "gem install foreman"
  rescue
    ap "Oopps Something went wrong.  Looks like you have to setup manually"
    ap "goto: github.com/manual"
  end
end

task :client_setup do
  ap "*** Starting AngularJS client setup *** "
  system("cd client &&
          npm cache clean &&
          npm install &&
          bower install")
end

task :server_setup do
  ap "*** Starting Rails server setup *** "
  system "cd server &&
          bundle exec rake db:drop --trace &&
          bundle exec rake db:create --trace &&
          bundle exec rake db:migrate --trace &&
          bundle exec rake db:seed --trace"
end


task :build_client do
  system "cd server && rm -rf public && cd .."
  system "cd client && grunt build"
end


task :deploy_heroku do
  system "git subtree push --prefix server heroku master"
end
