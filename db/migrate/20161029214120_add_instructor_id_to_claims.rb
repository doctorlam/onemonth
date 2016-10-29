class AddInstructorIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :instructor_id, :integer
  end
end
