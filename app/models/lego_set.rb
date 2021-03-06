class LegoSet < ApplicationRecord
    has_one_attached :image
    has_one_attached :instructions

    validates :name, presence: true
    validates :item_number, presence: true
    validates :description, presence: true

    def short_description
        "#{description[0..180]}..."
    end
end
