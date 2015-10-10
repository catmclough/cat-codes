require 'rails_helper'

feature "the homepage" do
  scenario "a user can see a link to my projects" do
    visit('/')
    expect(page).to have_link ("my projects")
  end
end