class Like < ApplicationRecord
    validates :menbur_id, {presence: true}
    validates :post_id, {presence: true}

    belongs_to :post
    belongs_to :menbur
end
