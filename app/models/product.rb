class Product < ApplicationRecord
    belongs_to :category
    has_many :order
    validates :sku, format: { with: /\A[a-zA-Z0-9\s]+\z/i, message: "can only contain letters and numbers." }
end
