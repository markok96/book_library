class Book < ApplicationRecord
  belongs_to :author

  def self.search(query)
    where("title ILIKE ?", "%#{query}%")
  end
end
