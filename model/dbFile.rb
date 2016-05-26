#!/usr/bin/ruby

require "rubygems"
require "sequel"
DB = Sequel.connect('mysql://root:hiplsql@localhost/drug_management')

# create an items table
DB.create_table :users do
  String :emailID, :primary_key=>true
  String :name
  String :mobile
  String :password ,:size=>64
end

=begin

DB.create_table :SaleHistory do
  primary_key :id
  integer :OrderId
  String :drugname 
  integer :quantity
  integer :price
end

DB.create_table :categories do
  primary_key :id
  String :categorieName
end

DB.create_table :drugInventory do
  primary_key :id
  String :drug_name
  integer :quantity
  integer :price
end

DB.create_table :drug_catogary do
  String :drugname
  String :cat1
  String :cat2
  String :cat3
end
=end