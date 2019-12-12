class Userchoice < ApplicationRecord
    belongs_to :user
    belongs_to :answerchoice
    validates :user_id, presence: true
    validates :answerchoice_id, presence: true
    validates :user_id, uniqueness: { scope: :answerchoice_id,
    message: "User can only vote once!" }
end
