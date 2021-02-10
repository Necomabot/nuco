class Room < ApplicationRecord

  validates :category_id, numericality: { other_than: 1 } 

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
