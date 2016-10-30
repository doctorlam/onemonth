class AddClaimerIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :claimer_id, :integer
  end
end
