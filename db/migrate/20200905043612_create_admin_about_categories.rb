class CreateAdminAboutCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_about_categories do |t|
      t.string :name
      t.integer :categorie_number

      t.timestamps
    end
  end
end
