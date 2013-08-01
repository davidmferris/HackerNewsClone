require 'spec_helper'

feature 'visit homepage' do
   scenario 'has title' do
    visit '/'
    expect(page).to have_content "Hacker News"
   end

end