require 'rails_helper'

RSpec.feature "View Photos", type: :feature do 
  scenario "User can view their own profile" do
    sign_up_with_name('test-user', 'test@example.com', '123456')
    click_link "My profile"
    expect(page).to have_content('test-user')
  end
end