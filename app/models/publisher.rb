class Publisher < ApplicationRecord
    has_many :books
    # has_many :authors, through: :books
    has_many :languages, through: :books
end
