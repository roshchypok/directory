class Section < ApplicationRecord

  acts_as_list

  has_many :categories

  validates :slug, uniqueness: {message: 'лінк має бути унікальним'}

end
