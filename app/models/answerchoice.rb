class Answerchoice < ApplicationRecord
    belongs_to :question
    def increment
        tally = tally + 1
    end
end
