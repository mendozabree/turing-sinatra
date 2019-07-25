require_relative '../spec_helper'

RSpec.describe DepartmentsController, type: :controller do
  describe 'get' do
    let!(:department) { create :department }

    it 'displays all departments' do
      get '/departments'

      expect(last_response).to be_ok
      # expect(last_response).to include(\n department[:name])
      # expect(last_response).to include(department[:description])
    end

  end
end
