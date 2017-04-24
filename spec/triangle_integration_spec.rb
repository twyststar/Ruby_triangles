require('capybara/rspec')
require('./app.rb')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('is_triangle site test', {:type => :feature}) do
  it('will return an equilateral triangle if user inputs 3 equal sides') do
    visit('/')
    fill_in('s1', :with=>'10')
    fill_in('s2', :with=>'10')
    fill_in('s3', :with=>'10')
    click_button('Submit')
    expect(page).to have_content('Equilateral')
  end
end
