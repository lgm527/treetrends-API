class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.integer :census_id
      t.string :species
      t.string :steward
      t.string :health
      t.string :address
      t.string :boroname
      t.integer :zipcode

      t.timestamps
    end
  end
end
