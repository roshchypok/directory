class Item < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  belongs_to :category
  #belongs_to :place

  before_save :create_slug

  private

  def create_slug
    if self.slug.blank?
      self.slug = Translit.convert(self.name)
    end
  end
end
