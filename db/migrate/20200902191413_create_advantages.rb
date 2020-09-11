class CreateAdvantages < ActiveRecord::Migration[6.0]
  def change
    create_table :advantages do |t|

      t.belongs_to :project, foreign_key: true

      # about economique

      t.string :title

      t.text :description

      t.string  :economique,      default:''

      t.string  :social,          default:''

      t.string  :culturel

      t.timestamps
    end
  end
end
