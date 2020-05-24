class Exercise < ApplicationRecord
    has_many :exercise_lists
    has_many :routines, through: :exercise_lists
end
