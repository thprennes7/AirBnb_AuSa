class Stroll < ApplicationRecord
  belongs_to :city
  belongs_to :dog_sitter
  belongs_to :dog 
end
