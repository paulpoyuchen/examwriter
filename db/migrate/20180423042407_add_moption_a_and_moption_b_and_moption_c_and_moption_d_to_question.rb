class AddMoptionAAndMoptionBAndMoptionCAndMoptionDToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :moption_a, :string
    add_column :questions, :moption_b, :string
    add_column :questions, :moption_c, :string
    add_column :questions, :moption_d, :string
  end
end
