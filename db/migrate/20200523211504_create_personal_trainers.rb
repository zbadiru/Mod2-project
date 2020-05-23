class CreatePersonalTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_trainers do |t|
      t.string :name
      t.integer :age
      t.string :expirience

      t.timestamps
    end
  end
end
