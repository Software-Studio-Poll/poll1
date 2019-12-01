class Poll < ApplicationRecord
    has_many :questions, inverse_of: :poll
    accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
    belongs_to :user
end
