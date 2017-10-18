require 'rails_helper'
# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
#
feature 'User' do
  context 'search for stations' do
    scenario 'see list of 10 closest stations' do
      VCR.use_cassette('fuel') do
        stations = Station.all
        visit '/'
        fill_in('q', with: '80203')
        click_on('Locate')

        expect(current_path).to eq('/search')
        expect(page).to have_content(stations[0].name)
        expect(page).to have_content(stations[0].address)
        expect(page).to have_content(stations[0].fuel_type)
        expect(page).to have_content(stations[0].distance)
        expect(page).to have_content(stations[0].access)

      end
    end
  end
end
