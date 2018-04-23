class RemoveAdminAndTeacherAndStudentFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :admin, :boolean
    remove_column :users, :teacher, :boolean
    remove_column :users, :student, :boolean
  end
end
