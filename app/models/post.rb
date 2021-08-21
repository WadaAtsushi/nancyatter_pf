class Post < ApplicationRecord
    validates :title, presence: true, length: {maximum: 40}
    validates :content, presence: true, length: {maximum: 300}
    validates :user_id, presence: true
    
    mount_uploader :post_image, ImageUploader

    belongs_to :user
    belongs_to :menbur
    belongs_to :nancyatterapp
    belongs_to :postcategory
    has_many :likes
    has_many :comments
    
end
