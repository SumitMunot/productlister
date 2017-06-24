class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :colour
      t.boolean :status
      t.date :inward_date
      t.string :type
      t.string :description
      t.timestamps
    end
  end
end
