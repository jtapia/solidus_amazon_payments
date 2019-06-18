##
# Amazon Payments - Login and Pay for Spree Commerce
#
# @category    Amazon
# @package     Amazon_Payments
# @copyright   Copyright (c) 2014 Amazon.com
# @license     http://opensource.org/licenses/Apache-2.0  Apache License, Version 2.0
#
##
source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch

if branch == 'master' || branch >= 'v2.3'
  gem 'rails', '~> 5.1.0'
elsif branch >= 'v2.0'
  gem 'rails', '~> 5.0.0'
else
  gem 'rails_test_params_backport'
  gem 'rails', '~> 4.2.7'
end

if ENV['DB'] == 'mysql'
  gem 'mysql2', '~> 0.4.10'
else
  gem 'pg', '~> 0.21'
end

group :development, :test do
  gem 'factory_bot', (branch < 'v2.5' ? '4.10.0' : '> 4.10.0')
  gem 'pry-rails'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
end

gemspec
