class User < ApplicationRecord
  has_secure_password

  has_many :usertags
  has_many :tags, through: :usertags 

  has_many :requests_as_requestor, foreign_key: :requestor_id, class_name: 'Match'
  has_many :receivers, through: :requests_as_requestor
  
  has_many :requests_as_receiver, foreign_key: :receiver_id, class_name: 'Match'
  has_many :requestors, through: :requests_as_receiver
  
  # PASSWORD_REQUIREMENTS = /\A 
  #     (?=.{8,}) # at least 8 characters
  #     (?=.*\d) # at least 1 number
  #     (?=.*[a-z]) # at least 1 lowercase
  #     (?=.*[A-Z]) # at least one uppercase
  #     (?=.*[[:^alnum:]]) # at least 1 symbol
  # /x

  # validates :password, format: PASSWORD_REQUIREMENTS
  validates :email, presence: true, uniqueness: true

end






# has_many :received_messages, foreign_key: :recipient_id, class_name: 'Message'
# has_many :senders, through: :received_messages

# has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'
# has_many :recipients, through: :sent_messages