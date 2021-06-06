FROM ruby:2.6.3

RUN bundle 

COPY . /

RUN rails db:create && rails db:migrate && rails db:seed

EXPOSE 3000

CMD rails s
