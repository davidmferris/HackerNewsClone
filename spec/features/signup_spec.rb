require 'spec_helper'


feature '' do
  scenario 'with valid email' do
    visit new_user_path
    fill_in :email, with: 'example@gmail.com'
    fill_in :name, with: "Dave"
    fill_in :password, with: "password"
    click_button 'submit'
    expect(page).to have_content 'Your Profile'
  end
end