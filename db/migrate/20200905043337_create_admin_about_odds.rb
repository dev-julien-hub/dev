class CreateAdminAboutOdds < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_about_odds do |t|
      t.string :name
      t.integer :odd_number
      t.timestamps
    end
  end
end
