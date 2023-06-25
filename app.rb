#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
	erb :home
end

get '/contacts' do
	erb :contacts
end


get '/about' do
	erb :about

end


get '/product' do
	erb :product
end