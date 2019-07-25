
require 'capybara/rspec'

RSpec.describe ApplicationController, type: :feature, js: true do
  let!(:department) { create_list :department, 3 }

  feature 'departments' do
    scenario "contains all the departments and descriptions" do
      visit '/'
      find('#departments').click
      expect(page).to have_content(department.first.name)
      expect(page).to have_content(department.first.description)
    end

    scenario "can view specific department" do
      visit '/'
      find('#departments').click
      find(".#{department.first.name}").click

      expect(page).to have_content(department.first.name)
      expect(page).to have_content(department.first.description)
      expect(page).to have_current_path("/departments/#{department.first.name}")
    end
  end

end
