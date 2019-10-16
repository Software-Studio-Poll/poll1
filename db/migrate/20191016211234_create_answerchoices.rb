class CreateAnswerchoices < ActiveRecord::Migration[6.0]
  def change
    create_table :answerchoices do |t|
      t.text :content
      t.integer :question_id
      t.integer :tally

      t.timestamps
    end
  end
end
