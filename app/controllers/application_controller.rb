require 'sinatra'
require './config/environment'

# ApplicationController
class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
    set :database_fie, 'config/database.yml'
  end

  get '/' do
    erb :index
  end

  not_found do
    erb :not_found
  end
end
