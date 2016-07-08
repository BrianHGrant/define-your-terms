require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add word path', {:type => :feature}) do
  it('takes in user entry for a single word and adds it to list of words') do
    visit('/')
    click_button('Add Word')
    fill_in('term', :with => 'yellow')
    click_button('Add Word!')
    expect(page).to have_content('yellow')
  end
  it('allows user to add definition') do
    visit('/')
    click_button('Add Word')
    fill_in('term', :with => 'blue')
    click_button('Add Word!')
    click_link('blue')
    click_button('Add Definition')
    fill_in('part', :with => 'noun')
    fill_in('definition', :with => 'color')
    click_button('Add Definition!')
    expect(page).to have_content('noun color')
  end
end
