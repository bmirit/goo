ARG RUBY_VERSION=3.2

FROM ontoportal/ontoportal-ruby-base:$RUBY_VERSION

WORKDIR /app

COPY Gemfile* *.gemspec ./

RUN bundle install --jobs 4 --retry 3

COPY . ./

CMD ["bundle", "exec", "rake"]
