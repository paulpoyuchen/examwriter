class AddAnsweraAndAnswerbAndAnswercAndAnswerdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answera, :string
    add_column :questions, :answerb, :string
    add_column :questions, :answerc, :string
    add_column :questions, :answerd, :string
  end
end
