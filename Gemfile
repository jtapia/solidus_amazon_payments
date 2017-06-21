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

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch

if branch == 'master' || branch >= 'v2.0'
  gem 'rails-controller-testing', group: :test
else
  gem 'rails_test_params_backport'
end

group :development, :test do
  gem 'pry-rails'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'webmock'
end

gem 'pg'
gem 'mysql2'

gemspec
