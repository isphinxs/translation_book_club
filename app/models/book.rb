class Book < ApplicationRecord
  belongs_to :language
  belongs_to :member
  belongs_to :publisher
  belongs_to :author
end
