class Solution < ApplicationRecord

  has_one_attached  :solution_img

  belongs_to :project, dependent: :destroy

end
