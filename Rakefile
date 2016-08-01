# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'rake'
require File.expand_path('../config/application', __FILE__)
require 'rake/testtask'

Rails.application.load_tasks


desc "Run all tests"
Rake::TestTask.new('test') do |t|
  t.pattern = 'tests/*_test.rb'
end

