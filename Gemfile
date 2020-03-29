# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'action_policy'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'clearance'
gem 'doorkeeper'
gem 'faker'
gem 'graphql'
gem 'pg'
gem 'puma'
gem 'rails', '~> 6.0.2'
gem 'sorbet-runtime'
gem 'strong_migrations'

group :development do
  gem 'annotate'
  gem 'listen'
  gem 'pry-rescue'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'sorbet'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'fabrication'
  gem 'pry-byebug'
  gem 'pry-clipboard'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'timecop'
end
