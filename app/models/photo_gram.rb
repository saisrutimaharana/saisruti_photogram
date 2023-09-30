class PhotoGram < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes
    attr_accessor :user_id
end
