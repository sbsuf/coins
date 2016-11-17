require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the home path', {:type => :feature}) do
  it('processes the user entry and returns the proper amount of coins for their change') do
    visit('/')
    fill_in('change', :with => '52')
    click_button("Calculator")
    expect(page).to have_content('[25, 25, 1, 1]')
  end
end
