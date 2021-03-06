# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails", "~> 6.1.0"

gem "aasm"
gem "after_commit_everywhere"
gem "aws-sdk-ec2"
gem "aws-sdk-rails"
gem "aws-sdk-s3"
gem "aws-sdk-sqs"
gem "country_select"
gem "devise"
gem "devise_invitable"
gem "devise-two-factor"
gem "doorkeeper"
gem "dry-validation"
gem "enumerize"
gem "http"
gem "kaminari"
gem "lograge"
gem "okcomputer"
gem "pg"
gem "phony"
gem "puma"
gem "pundit"
gem "responders"
gem "rqrcode"
gem "sassc-rails"
gem "sentry-rails"
gem "sentry-ruby"
gem "shoryuken"
gem "show_for"
gem "simple_form"
gem "skylight"
gem "turbolinks"
gem "tzinfo-data"
gem "webpacker"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  gem "pry"
  gem "rspec_api_documentation", github: "zipmark/rspec_api_documentation"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "squasher", require: false
end

group :test do
  gem "capybara"
  gem "email_spec"
  gem "factory_bot_rails"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "simplecov-lcov", require: false
  gem "twilio-ruby"
  gem "webdrivers"
  gem "webmock"
end
