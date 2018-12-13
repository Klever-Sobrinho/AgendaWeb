class Contact < ApplicationRecord
  # Validates fields from table contacts - blank and unique
  validates :name, :cellphone, :birthdate, presence: true
  validates :email, presence: true, uniqueness: true
end
