class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :students

  accepts_nested_attributes_for :students,
    reject_if: :all_blank,
    allow_destroy: true

  validates :name, presence: true
  validates :email, presence: true
  # validates :password, presence: true
end
