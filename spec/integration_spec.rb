require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {:type => :feature}) do
  before() do
    Word.clear()
  end
  it('adds a new word to the list') do
    visit('/')
    fill_in('word', :with => 'cat')
    fill_in('definition', :with => 'the devil')
    click_button('Add Word')
    expect(page).to have_content('cat')
  end
end
