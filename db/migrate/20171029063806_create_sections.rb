class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :slug
      t.string :name
      t.string :name_ru
      t.string :name_en
      t.text :description
      t.text :description_ru
      t.text :description_en
      t.integer :position, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
