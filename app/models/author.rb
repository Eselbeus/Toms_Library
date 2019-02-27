class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :birth_year, presence: true
  validates :birth_year, numericality: { only_integer: true}
  validates :birth_year, numericality: { less_than: 2020 }
end
