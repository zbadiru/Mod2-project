class Client < ApplicationRecord
    has_many :workout_plans
    has_many :personal_trainers, through: :workout_plans
end
