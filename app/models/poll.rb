class Poll < ApplicationRecord
    has_many :questions, inverse_of: :poll
    belongs_to :user
end
