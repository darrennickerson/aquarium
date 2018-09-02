class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :city
      t.string :postal
      t.string :province
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
