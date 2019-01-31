class DogSitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dog_sitters, through: :stroll 
end
