class Drink < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
    has_attached_file :drinkimage1, styles: { large: "500x500>" }, default_url: "/assets/defaultimage.png"
  validates_attachment_content_type :drinkimage1, attachment_presence: true, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
