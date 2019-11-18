class ChangeColumnProfessionalToUsers < ActiveRecord::Migration[5.2]
  def change
      change_column :users, :professional, :boolean, :default => false
  end
end
