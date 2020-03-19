  require 'rails_helper'
  RSpec.feature "Profile Picture", type: :feature do

  
    scenario "a user can select a picture as their profile picture" do
      sign_up_with_name("Josh", "josh@example.com", "1234567")
      visit("/photos")
      click_button("New photo")
      expect(current_path).to eq("/photos/new")
      page.attach_file("photo_image", Rails.root + 'spec/support/images/cute-dog.jpg')
      click_button "Create Photo"
      expect(page).to have_css("img[src*='cute-dog.jpg']")
      click_button "Make Profile Pic"
      expect(page).to have_content("You are attempting to change your profile picture")
      click_button "Confirm?"
      expect(page).to have_content("Josh")
      expect(page).to have_content("profile picture:")
      expect(page).to have_css("img[src*='cute-dog.jpg']")
    end
  end
