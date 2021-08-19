class Nancyatterapp < ApplicationRecord
    validates :app_image, presence: true

    # mount_uploader :app_image, ImageUploader

    belongs_to :user
    has_many :menburs
    has_many :posts
    belongs_to :appcategory
    has_many :postcategories
end
