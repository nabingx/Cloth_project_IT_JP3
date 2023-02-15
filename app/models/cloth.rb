class Cloth < ApplicationRecord
    has_one_attached :image
    has_many :cloth_review, -> { order "created_at DESC"}
end
