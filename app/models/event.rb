class Event < ApplicationRecord
  has_many :shirts, dependent: :destroy
end
