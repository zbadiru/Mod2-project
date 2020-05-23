class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :personal_trainer_id
      t.integer :exercise_id
      t.integer :repetitions

      t.timestamps
    end
  end
end
