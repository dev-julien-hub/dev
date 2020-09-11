class Advantage < ApplicationRecord
  belongs_to :project, dependent: :destroy
end
