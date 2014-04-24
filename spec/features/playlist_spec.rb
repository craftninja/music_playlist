require 'spec_helper'

feature 'User can manage a music playlist' do
  scenario 'User is welcomed on the homepage' do
    visit '/'
    expect(page).to have_content('Welcome to PlaylistLand')
  end
end
