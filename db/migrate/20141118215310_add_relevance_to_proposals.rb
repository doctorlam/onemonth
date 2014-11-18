class AddRelevanceToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :relevance, :text
  end
end
