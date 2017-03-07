class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :header_image
      t.string :header_text
      t.string :title
      t.text :description
      t.json :gallery
      t.string :map
      t.string :address
      t.string :phones
      t.string :info_email
      t.string :support_email
      t.string :order_email
      t.json :prises

      t.timestamps
    end
  end
end
