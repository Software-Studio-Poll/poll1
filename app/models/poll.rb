class Poll < ApplicationRecord
    has_many :questions, inverse_of: :poll
    accepts_nested_attributes_for :questions
    belongs_to :user
end
