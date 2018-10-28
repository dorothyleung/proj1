class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, presence: true, uniqueness: true # add validation to Pokemon model 
end
