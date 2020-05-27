class Routine < ApplicationRecord
    has_many :exercise_lists
    has_many :exercises, through: :exercise_lists

    belongs_to :personal_trainer
    
    accepts_nested_attributes_for :exercises

    validates :name, uniqueness: true
end
