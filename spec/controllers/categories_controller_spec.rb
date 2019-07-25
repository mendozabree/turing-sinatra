require_relative '../spec_helper'

RSpec.describe CategoriesController, type: :controller do
  describe 'get' do
    let!(:category) { create :category }

    it 'displays all categories' do
      get '/categories'
      expect(last_response).to be_ok
    end
  end
end
