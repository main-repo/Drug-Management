require 'sinatra'
require 'haml'
require 'pry'
require 'sinatra/flash'
require 'sequel'
require 'bcrypt'
require 'sinatra/partial'
require_relative 'config.rb'
#require 'sinatra/config_file'
#config_file 'config.yml'

get '/home' do
  @greeting = settings.greeting
  haml :home
end