require 'rails_helper'

RSpec.feature "Delete Photo", type: :feature do

  scenario "a user can update a photo" do
    sign_up("mrtest@example.com", "1234567")
    visit("/photos")
    click_on("New photo")
    page.attach_file("photo_image", Rails.root + 'spec/support/images/cute-dog.jpg')
    click_on "Create Photo"
    click_on "Delete"
    expect(page).not_to have_css("img[src*='cute-dog.jpg']")
  end

end
