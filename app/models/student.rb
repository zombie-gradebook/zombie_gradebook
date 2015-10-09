class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :teacher
  has_many :parents
  has_many :grades

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :teacher_id, presence: true
end
