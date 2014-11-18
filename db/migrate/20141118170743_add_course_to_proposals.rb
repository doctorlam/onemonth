class AddCourseToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :course, :string
  end
end
