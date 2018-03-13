class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
  :rememberable, :trackable, :validatable # :confirmable
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates_email_format_of :email
end
