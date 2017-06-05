class Pet < ApplicationRecord
  belongs_to :user
  validates :breed, :species, :name, :bornOn, :gender, presence: true
end
