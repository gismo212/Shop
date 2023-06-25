#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "shop.db"}

class Contact < ActiveRecord::Base
end
get '/' do
	erb :home
end

get '/contacts' do
	erb :contacts
end

post '/contacts' do
	erb :contacts
end

get '/about' do
	erb :about
end

get '/product' do
	erb :product
end