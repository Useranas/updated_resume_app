class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :about
  has_many :experiences
  has_many :educations
  has_many :skills
  accepts_nested_attributes_for :experiences, :educations, :skills

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
