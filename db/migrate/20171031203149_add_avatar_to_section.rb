class AddAvatarToSection < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :avatar, :string
  end
end
