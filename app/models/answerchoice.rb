class Answerchoice < ApplicationRecord
    belongs_to :question
    validates :content, length: { in: 1..1200 }
    validates :content, :question_id, :tally, presence: true
end
