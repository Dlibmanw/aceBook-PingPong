require 'rails_helper'

RSpec.feature "View Photos", type: :feature do 
  scenario "User can view photos on their own profile" do
    sign_up_with_name('test-user', 'test@example.com', '123456')
    visit("/photos")
    click_link("New photo")
    expect(current_path).to eq("/photos/new")
    page.attach_file("photo_image", Rails.root + "spec/support/images/cute-dog.jpg")
    click_button "Create Photo"
    click_link "My profile"
    expect(page).to have_content('test-user')
    expect(page).to have_css("img[src*='cute-dog.jpg']")
  end

  # scenario "View other users photos" do
  #   User.create(id: 1, name: 'Test Name', email: 'signin_test@example.com', password: '123456')
  #   Photo.create(image: 'image.png', user_id: 1)
  #   sign_up_with_name('test-user', 'test@example.com', '123456')
  #   visit '/users/1'
  #   expect(page).to have_content('Test Name')
  #   expect(page).to have_css("img[src*='image.png']")
  # end
end
