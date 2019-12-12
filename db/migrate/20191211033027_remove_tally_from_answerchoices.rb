class RemoveTallyFromAnswerchoices < ActiveRecord::Migration[6.0]
  def change

    remove_column :answerchoices, :tally, :integer
  end
end
