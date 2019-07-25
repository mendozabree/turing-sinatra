require_relative '../spec_helper'


RSpec.describe ApplicationController, type: :controller do
  it 'should successfully access the home page' do
    get '/'

    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to turing')
  end

  it 'should return a not-found page for invalid urls' do
    get '/unknown'
    expect(last_response).to be_not_found
  end

end
