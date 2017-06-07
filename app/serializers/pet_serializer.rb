class PetSerializer < ActiveModel::Serializer
  attributes :id, :species, :breed, :name, :image, :bornOn, :gender, :user
  has_one :user
end
