# README

## UEMATSU project 2019 Website

## Installation
### 
```
git clone git@github.com:hirokiu/uemtpro2019_railsBase.git
cd uemtpro2019_railsBase
git checkout withRailsFiles
```

###
```
git clone git@github.com:hirokiu/uemtpro2019_app.git
```

### create .env file for password
at least 1 line for mysql password.
if you need other settings, please check 'docker-compose.yml' and 'config/database.yml' and so on.
```
MYSQL_PASSWORD=
```

### 
```
docker-compose build
docker-compose run web rails webpacker:install
docker-compose run web rake db:migrate
```

###
```
docker-compose up
```

###
Access 'http://localhost:3000', you can Yay!

## other
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
