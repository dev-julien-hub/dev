class Diaporama < ApplicationRecord

  belongs_to :project, dependent: :destroy

end
