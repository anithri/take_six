source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.4'

#   CORE
gem 'rails', '~> 5.2.0'

#  SERVER
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#  DB & MODELS
gem 'pg', '>= 0.18', '< 2.0'
gem 'interactor-rails', '~> 2.0'
gem 'graphql'
gem 'active_hash'

#  ASSETS
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

#  VIEWS
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

#  DEV & TEST
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'guard-rails'
  gem 'guard-bundler'
  gem 'libnotify'

  # gem 'rb-fchange', require: false
  # gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false

  gem 'annotate'

  # Use Capistrano for deployment
  # gem 'capistrano-rails', group: :development
end

group :development, :test do
  gem 'rspec-rails', '~> 3.7'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

