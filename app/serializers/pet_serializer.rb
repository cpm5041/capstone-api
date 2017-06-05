class PetSerializer < ActiveModel::Serializer
  attributes :id, :species, :breed, :name, :image, :bornOn, :gender
  has_one :user
end
