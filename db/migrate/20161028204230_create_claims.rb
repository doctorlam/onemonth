class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.text :explanation

      t.timestamps
    end
  end
end
