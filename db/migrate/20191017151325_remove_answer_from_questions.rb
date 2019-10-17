class RemoveAnswerFromQuestions < ActiveRecord::Migration[6.0]
  def change

    remove_column :questions, :answerA, :string

    remove_column :questions, :answerB, :string
  end
end
