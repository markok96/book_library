class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  def total_books
    books.count
  end

  def self.search(query)
    where("name ILIKE ?", "%#{query}%")
  end
end
