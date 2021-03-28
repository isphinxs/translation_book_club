class PublishersController < ApplicationController
    has_many :books
    has_many :languages, through: :books
end
