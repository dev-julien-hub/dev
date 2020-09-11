class Idea < ApplicationRecord

  has_many_attached :idea_img

  belongs_to :project, dependent: :destroy

end
