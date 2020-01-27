class Move < ApplicationRecord
    belongs_to :game
    belongs_to :user, required: false
end
