class Book < ApplicationRecord
  belongs_to :person
  has_and_belongs_to_many :libraries

  validates :title, presence: true
  validates :isbn, presence: true, format: { with: /\AISBN\s\d{3}-\d-\d{3}-\d{5}-\d\z/, message: "must be in this format: ISBN XXX-X-XXX-XXXXX-X where X is a digit" }
  
end
