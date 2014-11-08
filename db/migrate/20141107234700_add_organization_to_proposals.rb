class AddOrganizationToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :organization, :string
  end
end
