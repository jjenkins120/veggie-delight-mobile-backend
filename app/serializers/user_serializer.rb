class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :first_name, :birth_date, :veggie_type, :bio, :profile_image_url, :interested_in, :how_far

  has_many :user_tags
  
  has_many :tags 

  has_many :requests_as_requestor, foreign_key: :requestor_id, class_name: 'Match'
  has_many :receivers, through: :requests_as_requestor
  
  has_many :requests_as_receiver, foreign_key: :receiver_id, class_name: 'Match'
  has_many :requestors, through: :requests_as_receiver

end
