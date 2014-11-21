class CreateJointableProposalsSubjects < ActiveRecord::Migration
  def change
    create_table :jointable_proposals_subjects do |t|
      t.string :subjects
      t.string :proposals
    end
  end
end
