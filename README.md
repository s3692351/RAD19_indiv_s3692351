# RAD Assignment 2019 README

  

## Name & Student Number
* Sogyal.T.Sherpa s3692351

## Heroku URL
* [Course App](https://limitless-escarpment-19651.herokuapp.com)
  
## Heroku Log





-----> Ruby app detected

-----> Compiling Ruby/Rails

-----> Using Ruby version: ruby-2.4.1

-----> Installing dependencies using bundler 2.0.1

       Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment

       The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.

       Using rake 12.3.2

       Using concurrent-ruby 1.1.5

       Using i18n 1.6.0

       Using minitest 5.11.3

       Using thread_safe 0.3.6

       Using tzinfo 1.2.5

       Using activesupport 5.2.3

       Using builder 3.2.3

       Using erubi 1.8.0

       Using mini_portile2 2.4.0

       Using nokogiri 1.10.3

       Using rails-dom-testing 2.0.3

       Using crass 1.0.4

       Using loofah 2.2.3

       Using rails-html-sanitizer 1.0.4

       Using actionview 5.2.3

       Using rack 2.0.7

       Using rack-test 1.1.0

       Using actionpack 5.2.3

       Using nio4r 2.3.1

       Using websocket-extensions 0.1.3

       Using websocket-driver 0.7.0

       Using actioncable 5.2.3

       Using globalid 0.4.2

       Using activejob 5.2.3

       Using mini_mime 1.0.1

       Using mail 2.7.1

       Using actionmailer 5.2.3

       Using activemodel 5.2.3

       Using arel 9.0.0

       Using activerecord 5.2.3

       Using mimemagic 0.3.3

       Using marcel 0.3.3

       Using activestorage 5.2.3

       Using execjs 2.7.0

       Using autoprefixer-rails 9.5.1.1

       Using bcrypt 3.1.12

       Using msgpack 1.2.10

       Using bootsnap 1.4.4

       Using ffi 1.10.0

       Using sassc 2.0.1

       Using bootstrap-sass 3.4.1

       Using bundler 2.0.1

       Using mime-types-data 3.2019.0331

       Using mime-types 3.2.2

       Using carrierwave 1.3.1

       Using coffee-script-source 1.12.2

       Using coffee-script 2.4.1

       Using method_source 0.9.2

       Using thor 0.20.3

       Using railties 5.2.3

       Using coffee-rails 4.2.2

       Using font-awesome-rails 4.7.0.5

       Using multi_json 1.13.1

       Using jbuilder 2.8.0

       Using jquery-rails 4.3.3

       Using mini_magick 4.9.3

       Using pg 1.1.4

       Using puma 3.12.1

       Using sprockets 3.7.2

       Using sprockets-rails 3.2.1

       Using rails 5.2.3

       Using rails-controller-testing 1.0.4

       Using rb-fsevent 0.10.3

       Using rb-inotify 0.10.0

       Using sass-listen 4.0.0

       Using sass 3.7.4

       Using tilt 2.0.9

       Using sass-rails 5.0.7

       Using turbolinks-source 5.2.0

       Using turbolinks 5.2.0

       Using uglifier 4.1.20

       Bundle complete! 26 Gemfile dependencies, 72 gems now installed.

       Gems in the groups development and test were not installed.

       Bundled gems are installed into `./vendor/bundle`

       Bundle completed (0.39s)

       Cleaning up the bundler cache.

-----> Installing node-v10.14.1-linux-x64

-----> Detecting rake tasks

-----> Preparing app for Rails asset pipeline

       Running: rake assets:precompile

       Yarn executable was not detected in the system.

       Download Yarn at https://yarnpkg.com/en/docs/install

       Asset precompilation completed (1.37s)

       Cleaning assets

       Running: rake assets:clean

-----> Detecting rails configuration

###### WARNING:

       You set your `config.active_storage.service` to :local in production.

       If you are uploading files to this app, they will not persist after the app

       is restarted, on one-off dynos, or if the app has multiple dynos.

       Heroku applications have an ephemeral file system. To

       persist uploaded files, please use a service such as S3 and update your Rails

       configuration.

       

       For more information can be found in this article:

         https://devcenter.heroku.com/articles/active-storage-on-heroku

       

###### WARNING:

       We detected that some binary dependencies required to

       use all the preview features of Active Storage are not

       present on this system.

       

       For more information please see:

         https://devcenter.heroku.com/articles/active-storage-on-heroku

       

###### WARNING:

       No Procfile detected, using the default web server.

       We recommend explicitly declaring how to boot your server process via a Procfile.

       https://devcenter.heroku.com/articles/ruby-default-web-server

-----> Discovering process types

       Procfile declares types     -> (none)

       Default types for buildpack -> console, rake, web

-----> Compressing...

       Done: 54.8M

-----> Launching...

       Released v15

       https://limitless-escarpment-19651.herokuapp.com/ deployed to Heroku