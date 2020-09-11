class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|

      t.belongs_to :project, foreign_key: true

      # about solution of project

      t.string :title,        null:true, default: ''

      t.text :explication,    null: false

      t.string :illustrations,null: true

      # about img
      t.boolean :is_attach

      t.timestamps
    end
  end
end
