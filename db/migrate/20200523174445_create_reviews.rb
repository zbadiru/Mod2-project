class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :client_id
      t.integer :workout_plan_id

      t.timestamps
    end
  end
end
