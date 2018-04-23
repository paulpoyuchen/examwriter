class AddChoiceaAndChoicebAndChoicecAndChoicedToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :choicea, :string
    add_column :questions, :choiceb, :string
    add_column :questions, :choicec, :string
    add_column :questions, :choiced, :string
  end
end
