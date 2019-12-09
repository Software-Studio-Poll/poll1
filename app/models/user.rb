class User < ApplicationRecord
    has_secure_password
    has_many :polls
    has_many :userchoices, inverse_of: :user
end
