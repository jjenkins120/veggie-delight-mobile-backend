class MatchSerializer < ActiveModel::Serializer
  attributes :id, :requestor_id, :receiver_id, :status, :first_message_sent

  belongs_to :requestor, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

end
