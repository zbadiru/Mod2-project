class PersonalTrainer < ApplicationRecord
    has_many :routines
    has_many :workout_plans
    has_many :clients, through: :workout_plans

    validates :name, uniqueness: true
end
