class AddTimeToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :time, :string
  end
end
