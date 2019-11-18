class CreateProfListings < ActiveRecord::Migration[5.2]
  def change
    create_table :prof_listings do |t|
      t.string :company
      t.string :role
      t.string :industry
      t.references :user, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
