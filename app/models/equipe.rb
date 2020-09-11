class Equipe < ApplicationRecord

  belongs_to :project, dependent: :destroy

end
