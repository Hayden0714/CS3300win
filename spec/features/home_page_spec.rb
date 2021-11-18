
#testing the home page as a visitor, they should see projects
require 'rails_helper'
require_relative '../support/controller_macros'

RSpec.feature "Visiting the homepage", type: :feature do
  
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end

