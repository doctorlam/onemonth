class AddAgreementToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :agreement, :boolean
  end
end
