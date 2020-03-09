class Student < ApplicationRecord
  belongs_to :course, optional: true
  validates :name, :email, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
