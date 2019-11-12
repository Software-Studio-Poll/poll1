class Answerchoice < ApplicationRecord
    belongs_to :question
    #validates :text, presence: true, length: { in: 2..1200 }
    validates :question_id, presence: true
    validates :question_id, uniqueness: true
    validates :content, length: { in: 1..1200 }
    validates :content, :question_id, :tally, presence: true
    
    
end
