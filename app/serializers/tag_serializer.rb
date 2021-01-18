class TagSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users 
  has_many :usertags

end
