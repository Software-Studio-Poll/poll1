class Question < ApplicationRecord
    has_many :answerchoices
    validates :text, presence: true, length: { in: 2..1200 }
end