class Book < ApplicationRecord
  belongs_to :person
  has_and_belongs_to_many :libraries
end
