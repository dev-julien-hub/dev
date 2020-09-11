class Project < ApplicationRecord

  has_one_attached :project_img

  has_one_attached :project_video

  has_one_attached :diapo1

  has_one_attached :diapo2

  has_one_attached :diapo3

  has_one_attached :diapo4

  has_one_attached :diapo5

  has_one_attached :diapo6

  belongs_to :admin_about_region

  belongs_to :admin_about_odd

  belongs_to :admin_about_categorie

  belongs_to :user

  has_one :idea

  has_one :solution

  has_one :advantage

  has_one :diaporama

  has_one :equipe

  has_many :Contrepartie


end
