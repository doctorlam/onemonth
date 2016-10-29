class AddClientIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :client_id, :integer
  end
end
