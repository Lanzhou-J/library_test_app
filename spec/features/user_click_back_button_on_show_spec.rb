require 'rails_helper'

RSpec.feature "User click back button on show page" do
  scenario 'they return to homepage' do
    book_title = 'Test book'
    book_author = 'who'
    book = Book.create(title:book_title, author:book_author)

    visit book_path(book)
    click_on 'Back'

    expect(page).to have_link 'Add a new book'
  end
end