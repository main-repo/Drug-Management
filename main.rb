require 'sinatra'
require 'haml'
require 'pry'
require 'sinatra/flash'
require 'sequel'
require 'bcrypt'
require 'sinatra/partial'
require_relative 'config.rb'



get '/home' do
  haml :home
end

