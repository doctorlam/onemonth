class AddLastNameToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :last_name, :string
  end
end
