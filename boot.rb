ENV['RACK_ENV'] ||= 'development'
APP_ROOT = File.expand_path('../', __FILE__)
ENV['BUNDLE_GEMFILE'] ||= File.join(APP_ROOT, '/', 'Gemfile')
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require 'yaml'
CONFIG = YAML.load(File.open(File.join(APP_ROOT, 'settings.yml')))[ENV['RACK_ENV']]

# Require commands and relations in lib/
Dir[File.join(APP_ROOT, '/lib/**/*.rb')].each do |f|
  p "Boot.rb requiring '#{f}'"
  require f
end
