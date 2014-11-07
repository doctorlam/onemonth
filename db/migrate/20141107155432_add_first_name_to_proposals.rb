class AddFirstNameToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :first_name, :string
  end
end
