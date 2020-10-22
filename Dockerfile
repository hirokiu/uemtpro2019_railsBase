FROM ruby:2.6.6
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn
RUN mkdir /railsBase
WORKDIR /railsBase

ADD Gemfile /railsBase/Gemfile
ADD Gemfile.lock /railsBase/Gemfile.lock
RUN gem install nokogiri -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2/

RUN gem install bundler
RUN bundle install

ADD . /railsBase
RUN rails _6.0.3_ new /railsBase/ --force -d mysql --no-deps --webpacker
RUN rails webpacker:install
