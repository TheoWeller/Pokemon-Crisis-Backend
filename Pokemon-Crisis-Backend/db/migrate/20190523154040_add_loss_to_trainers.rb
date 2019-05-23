class AddLossToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :loss, :integer
  end
end
