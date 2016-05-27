require 'require_all'
require 'sinatra/config_file'
config_file 'config.yml'

enable :partial
enable :sessions
Sequel.connect(settings.db)
Sequel::Model.plugin :validation_helpers

require_all 'controller/**/*.rb'
require_all 'models/**/*.rb'