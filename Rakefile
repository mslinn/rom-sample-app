require_relative 'boot'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    configuration = ROM::Configuration.new(:sql, 'sqlite::memory')
    ROM::SQL::RakeSupport.env = configuration
  end
end
