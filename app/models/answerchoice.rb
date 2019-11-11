class Answerchoice < ApplicationRecord
    belongs_to :question
    validates :content, presence: true, length: { maximum: 500 }
end
