#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "shop.db"}

class Contact < ActiveRecord::Base
	validates :name, presence:  true
	validates :address, presence:  true
	validates :email, presence:  true
	validates :message, presence:  true
end

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base 
end

get '/' do
	@product = Product.all
	erb :home
end

get '/contacts' do
	erb :contacts
end

post '/contacts' do
	@c = Contact.create params[:contact]
	redirect to '/review'
end

get '/about' do
	erb :about
end

get '/review' do
	@contacts = Contact.all
	erb :review
end

post '/place_order' do
	@order = Order.create(params[:order])
	erb :order_placed
end

post '/cart' do
	@orders_input = params[:orders_input]
	@items = parse_orders_input(@orders_input)

	if @items.empty?
		return erb :cart_is_empty
	end

	@items.each do |item|
		id = item[0].to_i
		cnt = item[1].to_i
		item[0] = Product.find(id)
	end

	erb :cart
end

def parse_orders_input(orders_input)
	s1 = orders_input.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/\=/)

		next if s2.length != 2

		s3 = s2[0].split(/_/)

		next if s3.length != 2

		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]

		arr.push(arr2)
	end

	return arr
end


get '/admin' do
	@order = Order.all
	erb:admin
end