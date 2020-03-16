require 'rails_helper'

RSpec.feature "Photo Album", type: :feature do

  scenario "a user can view their album" do
    sign_up("josh@example.com", "1234567")
    visit("/photos")
    expect(page).to have_link("New photo")
  end
end