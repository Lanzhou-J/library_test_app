class Book < ApplicationRecord
  validates :title, presence: true, length: {in: 3..60}
  validates :author, presence: true, length: {in: 3..25}
end
