class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :access_token, index: true, unique: true
      t.string :role
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
