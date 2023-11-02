class Book < ApplicationRecord
  belongs_to :person
  has_and_belongs_to_many :libraries

  validates :title, presence: true
  validates :isbn, presence: true, format: { with: /\AISBN (\d{3}-\d{1,5}-\d{1,7}-\d{1,7}-\d{1})\z/, message: "must be a format like this: 'ISBN 978-0-306-40615-7'" }
end
