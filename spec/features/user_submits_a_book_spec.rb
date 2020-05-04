require 'rails_helper'

RSpec.feature "User submits a book" do
  scenario 'they see the title on the page for the submitted book' do
    book_title = 'Test book'
    book_author = 'who'

    visit root_path
    click_on 'Add a new book'
    fill_in 'book_title', with: book_title
    fill_in 'book_author', with: book_author
    click_on 'Submit'

    expect(page).to have_content book_title
  end
end



# As a User
# When I visit the home page
# And I click "Add new book"
# And I fill in the title
# And I fill in the author
# And I click on "Submit"
# I should then see the title on the page