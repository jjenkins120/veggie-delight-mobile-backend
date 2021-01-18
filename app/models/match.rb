class Match < ApplicationRecord
  belongs_to :requestor, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  has_many :messages

  validates :status, inclusion: { in: %w(denied pending confirmed)}

end
