class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      # table join
      t.belongs_to :user, foreign_key: true

      t.belongs_to :admin_about_categorie, index: true

      t.belongs_to :admin_about_region, index: true

      t.belongs_to :admin_about_odd, index: true

      # about projet
      t.string :title,          null: false
      t.string :description,    null: false
      t.string  :slogan,        default: ''
      t.string :localisation,    default: ''

      t.datetime :start_crowd,     null: true

      t.datetime :end_crowd,     null: true

      t.integer :number_day

      t.boolean :is_img_attach, default: false

      t.boolean :is_video_attach, default: false

      t.integer :rest_day,      default: 0

      t.integer :collect_jeuton,  default: 0

      t.integer :pourcentage,   default: 0

      # about jeutons

      t.integer :jeuton,        default: 0

      # about description
      #t.text :idea
      t.text :constatation
      #t.text :solution
      #t.text :advantage

      #equipes
      t.boolean :is_more_equipe,    default: false

      # status du projet
      t.boolean :is_finished,       default: false
      t.boolean :is_cours,          default: false
      
      # calendar of activity
      t.boolean :is_calendar,       default: false

      t.boolean :is_validate_admin, default: false

      t.boolean :is_public,         default: false

      t.boolean :is_validate,       default: false

      t.boolean :is_has_valifunder, default: false

      # about finacement

      t.text :financement

      t.timestamps
    end
  end
end
