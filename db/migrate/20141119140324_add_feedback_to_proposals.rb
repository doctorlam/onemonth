class AddFeedbackToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :feedback, :text
  end
end
