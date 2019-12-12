class User < ApplicationRecord
    has_secure_password
    has_many :polls
    has_many :userchoices, inverse_of: :user
    validates :name, presence: true, length: { in: 1..120 }
    validates :email, presence: true, length: { in: 1..120 }
end
