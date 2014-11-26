class AddClientInfoToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :client_name, :string
    add_column :proposals, :client_email, :string
    add_column :proposals, :client_phone1, :integer
    add_column :proposals, :client_phone2, :integer
    add_column :proposals, :client_phone3, :integer
  end
end
