class AddSeo < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :seo, :string
    add_column :sections, :seo_ru, :string
    add_column :sections, :seo_en, :string

    add_column :categories, :seo, :string
    add_column :categories, :seo_ru, :string
    add_column :categories, :seo_en, :string
  end
end
