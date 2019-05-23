class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :win
      t.integer :loss
      
      t.timestamps
    end
  end
end
