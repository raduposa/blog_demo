class Feature < ApplicationRecord
    
    validates :text, presence: true, length: {minimum: 5, maximum: 20}
    validates :body, presence: true, length: {minimum: 5, maximum: 20}
    attr_accessor :text
end
