# README

## UEMATSU project 2019 Website

## Installation
### 
```
git clone https://github.com/hirokiu/uemtpro2019_railsBase.git
cd uemtpro2019
git checkout withRailsFiles
```

###
```
git clone https://github.com/hirokiu/uemtpro2019_app.git
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
