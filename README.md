# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

RSPEC:

- atom .
- add gem 'rspec-rails' to: group :development, :test do
- bundle install
- rails generate rspec:install
- rake db:migrate
- rake db:test:prepare
- rake
- created categrory_spec.rb & task_spec.rb in spec/models
- run: bundle exec rspec spec/models

- added this to spec_helper (category_spec.rb didn't work without this)
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

- added test to categrory.rb & task.rb
