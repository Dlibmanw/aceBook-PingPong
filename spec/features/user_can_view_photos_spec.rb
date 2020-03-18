require 'rails_helper'
RSpec.feature "View Photos", type: :feature do 
  scenario "View other users photos" do
    User.create(id: 1, name: 'Test Name', email: 'signin_test@example.com', password: '123456')
    Photo.create(image: 'image.png', user_id: 1)
    sign_up_with_name('test-user', 'test@example.com', '123456')
    visit '/users/1'
    expect(page).to have_content('Test Name')
  end
end
