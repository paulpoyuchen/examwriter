class AddAnswermToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answerm, :string
  end
end
