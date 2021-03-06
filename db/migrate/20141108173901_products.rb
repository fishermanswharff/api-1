class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
