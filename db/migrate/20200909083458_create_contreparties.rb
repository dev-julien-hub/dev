class CreateContreparties < ActiveRecord::Migration[6.0]
  def change
    create_table :contreparties do |t|
      t.belongs_to :project, foreign_key: true

      t.string :description10

      t.text :description40

      t.integer :jeuton_contrepartie

      t.integer :quantite

      t.boolean :address_valifunder,    default: true

      t.datetime :envoie

      t.boolean :check_val

      t.boolean :quantity_box

      t.timestamps
    end
  end
end
