class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :name
      t.string :name_ru
      t.string :name_en

      t.timestamps
    end
  end
end
