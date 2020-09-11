class CreateDiaporamas < ActiveRecord::Migration[6.0]
  def change
    create_table :diaporamas do |t|

      t.belongs_to :project

      t.timestamps
    end
  end
end
