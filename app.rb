#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

#1-добавить отзывы на страницу contacts
#2-сделать список продуктов(бд) и заполнить ее
#3-вывести список продуктов с помощью грид
#4-добавить корзину и сделать возможность покупать (local.storage,js)

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
	@c = Contact.create params[:contact]
	erb :contacts
end

get '/about' do
	erb :about
end

get '/product' do
	erb :product
end