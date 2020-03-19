require 'rails_helper'

RSpec.feature "View Photos", type: :feature do 
  
  scenario "User can view their own profile" do
    sign_up_with_name('test-user', 'test@example.com', '123456')
    click_link "test-user"
    expect(page).to have_content('test-user')
  end

  scenario "Can visit any profile by typing their url" do
    User.create(id: 1, name: 'Test Name', email: 'signin_test@example.com', password: '123456')
    Post.create(message: "Can't update test", user_id: 1)
    sign_up_with_name('test-user', 'test@example.com', '123456')
    first(".post").click_on "Test Name"
    expect(current_path).to eq '/users/1'
  end

  scenario "Can visit any profile by typing their url" do
    User.create(id: 1, name: 'Test Name', email: 'signin_test@example.com', password: '123456')
    sign_up_with_name('test-user', 'test@example.com', '123456')
    visit '/users/1'
  end

  scenario "Can't visit a profile that doesn't exist" do
    sign_up_with_name('test-user', 'test@example.com', '123456')
    visit '/users/2'
    expect(page).to have_content("Error: User doesn't exist") 
  end

end
