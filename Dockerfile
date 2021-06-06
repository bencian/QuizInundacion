FROM ruby:2.6.3

COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install

COPY . ./

RUN rails db:create && rails db:migrate && rails db:seed

EXPOSE 3000

CMD rails s
