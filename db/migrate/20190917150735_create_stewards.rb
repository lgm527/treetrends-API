class CreateStewards < ActiveRecord::Migration[5.2]
  def change
    create_table :stewards do |t|
      t.references :user, foreign_key: true
      t.references :tree, foreign_key: true

      t.timestamps
    end
  end
end
