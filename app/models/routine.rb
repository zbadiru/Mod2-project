class Routine < ApplicationRecord
    has_many :exercise_lists
    has_many :exercises, through: :exercise_lists

    belongs_to :personal_trainer

    NAME = Exercise.all.map { |s| s.name}

    validates :name, inclusion: NAME

    # def exercise_name
    #     pu = ExerciseList.first.exercise_id
    #     ex = Exercise.find{|a| a.exercise_list_id == pu}
    #     ax = ex.name.to_s
    #     ax
    # end
end
