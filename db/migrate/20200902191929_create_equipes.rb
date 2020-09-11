class CreateEquipes < ActiveRecord::Migration[6.0]
  def change
    create_table :equipes do |t|

      t.belongs_to :project, foreign_key: true

      t.integer :person_one

      t.integer :person_two

      t.integer :person_three

      t.integer :person_four

      t.timestamps
    end
  end
end
