require 'spec_helper'

feature 'User interacts with the app' do

  scenario 'User can search for an artist or band name' do

    visit '/'
    fill_in 'search_term', with: 'In Like Lions'
    click_on 'Blast!'

    current_url.should match 'http://www.example.com/In%20Like%20Lions'

  end

end
