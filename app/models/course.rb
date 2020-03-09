class Course < ApplicationRecord
  has_many :students
  has_and_belongs_to_many :topics
  validates :name, :description, :credits, presence: true
  validates :name, uniqueness: true

  accepts_nested_attributes_for :topics
end
