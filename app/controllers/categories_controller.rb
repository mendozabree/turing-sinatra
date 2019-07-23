require 'sinatra/activerecord'
require './app/models/categories.rb'
require './app/models/products.rb'

# CategoriesController
class CategoriesController < ApplicationController
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
