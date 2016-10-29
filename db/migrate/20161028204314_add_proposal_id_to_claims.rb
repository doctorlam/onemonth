class AddProposalIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :proposal_id, :integer
  end
end
