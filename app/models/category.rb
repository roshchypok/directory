class Category < ApplicationRecord

  acts_as_list

  belongs_to :section

  validates :slug, uniqueness: { scope: :section_id,
                                message: "лiнк має бути унікальним для секції" }

  mount_uploader :avatar, AvatarUploader

end
