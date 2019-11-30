class Answerchoice < ApplicationRecord
    belongs_to :question, optional: true
    validates :content, length: { in: 1..1200 }
    validates :content, :question, presence: true
end
