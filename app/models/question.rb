class Question < ApplicationRecord
    validates :text, presence: true, length: { maximum: 5000 }
    has_many :answerchoices
end
