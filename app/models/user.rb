class User < ApplicationRecord
  has_secure_password

  has_many :usertags
  has_many :tags, through: :usertags 

  has_many :received_messages, foreign_key: :recipient_id, class_name: 'Message'
  has_many :senders, through: :received_messages

  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'
  has_many :recipients, through: :sent_messages

  




end
