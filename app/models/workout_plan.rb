class WorkoutPlan < ApplicationRecord
    belongs_to :personal_trainer
    belongs_to :client

end
