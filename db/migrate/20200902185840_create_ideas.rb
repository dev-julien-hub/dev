class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|

      t.belongs_to :project, foreign_key: true

      # about idea of project

      t.string :title,        null:true, default: ''

      t.text :explication,    null: false

      t.string :illustrations,null: true

      # about img
      #
      t.boolean :is_attach

      t.timestamps
    end
  end
end
