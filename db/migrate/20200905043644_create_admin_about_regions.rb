class CreateAdminAboutRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_about_regions do |t|
      t.string :name
      t.integer :region_number
      t.timestamps
    end
  end
end
