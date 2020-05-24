class CreateWorkoutPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_plans do |t|
      t.string :name
      t.integer :personal_trainer_id

      t.timestamps
    end
  end
end
