class User < ApplicationRecord
  has_many :drinks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :profileimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/defaultuserimage.jpg"
  validates_attachment_content_type :profileimage, attachment_presence: true, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :username, presence: true, uniqueness: true, length: {minimum: 4}
end
