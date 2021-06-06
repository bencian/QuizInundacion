FROM ruby:2.6.3

RUN echo 'deb http://http.us.debian.org/debian stable main contrib non-free' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y \ 
  build-essential \ 
  nodejs

COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install

COPY . ./

RUN rails db:create && rails db:migrate && rails db:seed

EXPOSE 3000

CMD rails s
