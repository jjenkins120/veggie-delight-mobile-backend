class UsertagSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tag_id

  belongs_to :user
  belongs_to :tag
end
