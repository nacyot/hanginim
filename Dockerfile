FROM nacyot/ruby-ruby:2.1.2
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN gem install bundler --no-rdoc --no-ri
RUN ln -s /root/.rbenv/versions/2.1.2/bin/bundle /usr/local/bin

WORKDIR /opt/hanginim

ADD ./Gemfile /opt/hanginim/Gemfile
ADD ./Gemfile.lock /opt/hanginim/Gemfile.lock
RUN bundle install

ADD ./lib /opt/hanginim/lib
ADD ./data /opt/hanginim/data
ADD ./bin /opt/hanginim/bin
RUN touch .env

ENV TEAM TEAM
ENV CHANNEL CHANNEL
ENV NAME NAME
ENV INCOMING_TOKEN I_TOKEN
ENV OUTGOING_TOKEN O_TOKEN

EXPOSE 4567

CMD ["ruby", "./bin/run.rb"]
