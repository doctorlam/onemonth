class AddCourseToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :course, :string
  end
end
