class Menbur < ApplicationRecord
    validates :icon_image, presence: true
    validates :profile_image, presence: true

    mount_uploader :profile_image, ImageUploader
    mount_uploader :icon_image, ImageUploader
    
    belongs_to :nancyatterapp
    belongs_to :user
    has_many :posts
    has_many :likes
    has_many :comments
end
