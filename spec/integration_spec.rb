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
  it('visits the individual word page') do
    test_word = 'cat'
    visit('/')
    fill_in('word', :with => 'cat')
    fill_in('definition', :with => 'the devil')
    click_button('Add Word')
    click_link(test_word)
    expect(page).to have_content('Definitions:')
    expect(page).to have_content(test_word)
  end
end
