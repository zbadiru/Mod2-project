class WorkoutPlan < ApplicationRecord
    belongs_to :personal_trainer
    belongs_to :routine


    def exercies_names
        ru = self.personal_trainer.routines.select {|r| r.personal_trainer_id == self.personal_trainer_id }
        ex = ru.map {|r| r.exercises }
        ex_name = ex.flatten.map {|e| e.name}
        # byebug
    end
end
