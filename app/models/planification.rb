class Planification < ApplicationRecord
  has_one :user

  has_many_attached :slides
end
