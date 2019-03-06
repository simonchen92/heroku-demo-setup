class LoanSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :book
  has_one :borrower
end
