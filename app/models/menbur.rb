class Menbur < ApplicationRecord
    validates :profile_image, presence: true

    mount_uploader :profile_image, ImageUploader
    
    belongs_to :nancyatterapp
    belongs_to :user
    has_many :posts
    has_many :likes
    has_many :comments
end
