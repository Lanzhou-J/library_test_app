require 'rails_helper'

RSpec.feature "User edits a book" do
  scenario 'they see the new title on the page for the edited book' do
    book_title = 'Test book'
    book_title_edit = 'Edited Test book'
    book_author = 'who'
    book = Book.create(title:book_title, author:book_author)

    visit book_path(book)
    click_on 'Edit book'
    fill_in 'book_title', with: book_title_edit
    click_on 'Submit'

    expect(page).to have_content book_title_edit
  end
end



# As a User
# When I visit the book show page
# And I click "Edit book"
# And I change the title
# And I click "Submit"
# Then I should see the new title on the page