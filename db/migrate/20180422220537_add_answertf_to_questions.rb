class AddAnswertfToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answertf, :string
  end
end
