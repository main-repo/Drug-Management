require 'require_all'
enable :partial
enable :sessions
DB = Sequel.connect('mysql://root:satyaisical@localhost/drug_management')
Sequel::Model.plugin :validation_helpers

require_all 'controller/**/*.rb'
require_all 'models/**/*.rb'