class Postcategory < ApplicationRecord
    validates :category_name, presence: true, length: {maximum: 20}

    has_many :posts
    belongs_to :nancyatterapp
end
