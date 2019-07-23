require 'sinatra'

# ApplicationController
class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  set :database_fie, 'config/database.yml'

  get '/' do
    erb :index
  end
end
