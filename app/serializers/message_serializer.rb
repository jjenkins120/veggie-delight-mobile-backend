class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :match_id, :read

  belongs_to :match

end
