class ChangeActiveColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :prof_listings, :active, :boolean, :default => true
  end
end
