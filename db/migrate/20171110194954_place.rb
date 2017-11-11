class Place < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :slug
      t.string :name
      t.string :name_ru
      t.string :name_en
      t.text :description
      t.text :description_ru
      t.text :description_en
      t.string :seo
      t.string :seo_ru
      t.string :seo_en

      t.timestamps
    end
  end
end
