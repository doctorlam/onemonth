class AddClaimIdToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :claim_id, :integer
  end
end
