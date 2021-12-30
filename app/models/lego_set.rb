class LegoSet < ApplicationRecord
    validates :name, presence: true
    validates :item_number, presence: true
    validates :description, presence: true
end
