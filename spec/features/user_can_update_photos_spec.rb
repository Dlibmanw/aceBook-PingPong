require 'rails_helper'

RSpec.feature "Photo Management", type: :feature do

  scenario "a user can update a photo" do
    sign_up("mrtest@example.com", "1234567")
    visit("/photos")
    click_button("New photo")
    page.attach_file("photo_image", Rails.root + 'spec/support/images/cute-dog.jpg')
    click_button "Create Photo"
    click_button "Edit"
    page.attach_file("photo_image", Rails.root + 'spec/support/images/adorable-puppy.jpg')
    click_button "Update Photo"
    expect(page).to have_css("img[src*='adorable-puppy.jpg']")
  end

end
