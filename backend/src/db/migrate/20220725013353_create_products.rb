class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :size

      t.timestamps
    end
  end
end
