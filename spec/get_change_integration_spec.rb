require('capybara/rspec')
require('./app')
Capybara.app = Sinatra:Application

describe('change_returned path', {:type=> :feature}) do
  it('processes the user entry and returns returned_change page with denominations') do
    visit('/')
    fill_in('number', :with=> 49)
    click_button('Change, please!')
    expect(page).to have_content("You have 1 quarters, 2 dimes, 0 nickels, and 4 pennies.")
  end


end
