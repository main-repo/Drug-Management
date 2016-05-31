ENV['RACK_ENV'] ||= 'development'

namespace :db do
  require 'sequel'
  require 'sinatra'
  require 'sinatra/config_file'
  config_file 'config.yml' #config file path

  desc "Run migrations"
  task :migrate, [:version] do |t, args|
    require "sequel"
    Sequel.extension :migration
    db = Sequel.connect(settings.db)
    if args[:version]
      puts "Migrating to version #{args[:version]}"
      Sequel::Migrator.run(db, "model/db/migrations", target: args[:version].to_i)
    else
      puts "Migrating to latest"
      Sequel::Migrator.run(db, "model/db/migrations")
    end
  end
end
