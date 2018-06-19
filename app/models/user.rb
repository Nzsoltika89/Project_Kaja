class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :userparam, dependent: :destroy
  has_many :dishes
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/images/avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :doshcomments

  
end
