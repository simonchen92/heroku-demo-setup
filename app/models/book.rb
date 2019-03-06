class Book < ApplicationRecord
  # many to many relationship with loans
  has_many :loans, dependent: :destroy
  has_many :borrowers, through: :loans

  # one to many relationship
  belongs_to :author
end
