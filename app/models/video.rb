class Video < ApplicationRecord
 belongs_to :category

 scope :category, ->(category){
   where("categories.id = ?", category) if category
 }

  has_many :clips
  has_many :users, through: :clips
end
