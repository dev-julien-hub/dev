class Contrepartie < ApplicationRecord
  belongs_to :project

  has_one_attached :contrepartie_img

end
