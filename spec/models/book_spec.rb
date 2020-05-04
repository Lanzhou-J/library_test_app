require 'rails_helper'

RSpec.describe Book, type: :model do

  subject { described_class.new(title: 'Harry Potter', author: 'JK Rowling')}

  context 'validation' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end 

    it 'is not valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a author' do
      subject.author = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a author' do
      subject.author = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a author characters less than 3' do
      subject.author = 'aa'
      expect(subject).to_not be_valid
    end

    it 'is not valid with a author characters more than 25' do
      subject.author = 'a'*26
      expect(subject).to_not be_valid
    end

    it 'is not valid with a title characters less than 3' do
      subject.title = 'aa'
      expect(subject).to_not be_valid
    end

    it 'is not valid with a title characters more than 60' do
      subject.title = 'a'*80
      expect(subject).to_not be_valid
    end

  end
end
