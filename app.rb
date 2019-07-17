require 'sinatra'
require 'active_record'
require './config/environments'
require './models/departments.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/departments' do
    @departments = Departments.all
    erb :departments
  end

  get'/departments/:name' do
    @department = Departments.find_by_name(params[:name])
    erb :department
  end
end
