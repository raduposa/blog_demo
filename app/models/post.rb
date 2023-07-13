class Post < ApplicationRecord
validates :title, presence: true, length: {minimum: 5, maximum: 20}
validates :body, presence: true, length: {minimum: 5, maximum: 20}
belongs_to :user

has_many :comments, dependent: :destroy


end
