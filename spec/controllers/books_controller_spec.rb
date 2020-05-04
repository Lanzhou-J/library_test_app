require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  context '#create' do
    it 're-renders the form when the name is invalid' do
      post :create, params: { book: { name: nil } }

      expect(response).to render_template(:new)
    end
  end
end