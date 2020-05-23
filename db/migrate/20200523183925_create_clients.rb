class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :workout_plan_id
      t.integer :personal_trainer_id
      t.integer :review_id

      t.timestamps
    end
  end
end
