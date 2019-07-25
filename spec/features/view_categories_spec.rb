require 'capybara/rspec'

RSpec.describe 'Categories', type: :feature, js: true do
  let!(:category) { create_list :category, 3 }
  feature 'Categories' do
    scenario 'view all categories' do
      visit '/'
      find("#categories").click
      expect(page).to have_content(category.first.name)
      expect(page).to have_content(category.first.description)
      expect(page).to have_current_path("/categories")
    end

    scenario 'view one category' do
      visit '/'
      find("#categories").click
      find(".#{category.first.name}").click
      expect(page).to have_content(category.first.name)
      expect(page).to have_content(category.first.description)
      expect(page).to have_current_path("/categories/#{category.first.name}")
    end
  end
end
