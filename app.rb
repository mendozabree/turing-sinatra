require 'sinatra'
require 'active_record'
require './models/departments.rb'
require './models/categories.rb'
require './models/products.rb'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/departments' do
    @departments = Department.all
    erb :departments
  end

  get'/departments/:name' do
    @department = Department.find_by_name(params[:name])
    erb :department
  end

  get '/categories' do
    @categories = Category.all
    erb :categories
  end

  get '/categories/:name' do
    @category = Category.find_by_name(params[:name])
    erb :category
  end

  get '/categories/inProduct/:product_id' do
    product = Product.find_by_product_id(params[:product_id])
    product_category = product.categories
    @pdt_cat = {
      product_category: product_category,
      product: product.name
    }
    erb :product_category
  end
end
