class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :section_id
      t.string :slug
      t.string :name
      t.text :description
      t.string :name_ru
      t.text :description_ru
      t.string :name_en
      t.text :description_en
      t.integer :position, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
