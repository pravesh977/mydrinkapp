class Drink < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
end
