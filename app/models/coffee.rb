class Coffee < ApplicationRecord
  validates :name, :flavor, :price, presence: true
end
