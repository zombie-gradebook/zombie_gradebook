class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :students
  has_many :grades, through: :students
  has_many :parents, through: :students

  accepts_nested_attributes_for :students,
    reject_if: :all_blank,
    allow_destroy: true

  accepts_nested_attributes_for :grades,
    reject_if: :all_blank,
    allow_destroy: true

  validates :name, presence: true
  validates :email, presence: true
  # validates :password, presence: true
end
