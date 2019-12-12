class CreateUserchoices < ActiveRecord::Migration[6.0]
  def change
    create_table :userchoices do |t|
      t.integer :answerchoice_id
      t.integer :user_id

      t.timestamps
    end
  end
end
