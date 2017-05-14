class Tour < ApplicationRecord
  has_many :event
  belongs_to :user
end
