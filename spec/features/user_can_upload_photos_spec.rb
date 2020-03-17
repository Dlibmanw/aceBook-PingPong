require 'rails_helper'

RSpec.feature "Photo Album", type: :feature do

  scenario "a user can view their album" do
    sign_up("josh@example.com", "1234567")
    visit("/photos")
    expect(page).to have_link("New photo")
  end

  scenario "a user can view the new photo form" do
    sign_up("josh@example.com", "1234567")
    visit("/photos")
    click_link("New photo")
    expect(current_path).to eq("/photos/new")
    page.attach_file("photo_image", Rails.root + 'spec/support/images/cute-dog.jpg')
    click_button "Create Photo"
  end
end