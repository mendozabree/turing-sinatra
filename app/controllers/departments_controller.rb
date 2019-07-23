require 'sinatra/activerecord'
require './app/models/departments'

# DepartmentsController
class DepartmentsController < ApplicationController
  get '/departments' do
    @departments = Department.all
    erb :departments
  end

  get'/departments/:name' do
    @department = Department.find_by_name(params[:name])
    erb :department
  end
end
