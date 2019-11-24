class Question < ApplicationRecord
    belongs_to :poll
    has_many :answerchoices
    validates :text, presence: true, length: { in: 2..1200 }
    validates :poll_id, presence: true
end