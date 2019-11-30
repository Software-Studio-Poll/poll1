class Question < ApplicationRecord
    belongs_to :poll
    has_many :answerchoices, inverse_of: :question
    validates :text, presence: true, length: { in: 2..1200 }
    validates :poll, presence: true
    accepts_nested_attributes_for :answerchoices
end