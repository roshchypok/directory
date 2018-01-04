class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.string :name_ru
      t.string :name_en
      t.text :haslo
      t.text :haslo_ru
      t.text :haslo_en
      t.text :description
      t.text :description_ru
      t.text :description_en
      t.text :address
      t.text :address_ru
      t.text :address_en
      t.string :seo
      t.string :seo_ru
      t.string :seo_en
      t.string :phone
      t.string :email
      t.string :web
      t.string :slug
      t.integer :place_id
      t.string :lat
      t.string :lng
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
