class AddSemesterIdColmunnToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :semester_id, :string
    add_column :proposals, :abstract, :text
    add_column :proposals, :course_id, :string
    add_column :proposals, :course_type, :boolean
    add_column :proposals, :deliverables, :text
    add_column :proposals, :subject, :string
    add_column :proposals, :narrative, :text
  end
end
