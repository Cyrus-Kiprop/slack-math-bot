# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.6.6'

gem 'calc'
gem 'irb'
gem 'newrelic-slack-ruby-bot'
gem 'puma'
gem 'slack-ruby-bot-server', '>= 1.1.0'
gem 'slack-ruby-bot-server-events'

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'faker'
  gem 'rack-test'
  gem 'rake'
  gem 'rspec'
  gem 'selenium-webdriver'
  gem 'vcr'
  gem 'webmock'
end
