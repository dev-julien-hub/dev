class CreatePlanifications < ActiveRecord::Migration[6.0]
  def change
    create_table :planifications do |t|
      t.belongs_to :user,       index: true

      t.string :group_user_id,  default: ''

      t.string :title,          null: false

      t.text :description

      t.integer :amount,        null: false, default: 0

      t.string :place,          null: false

      t.datetime :start_date,   null: false

      t.datetime :end_date

      t.integer :duration

      t.boolean :is_path_img,    default: false

      t.boolean :is_free,        default: false

      t.boolean :is_valid,       default: false

      t.boolean :is_approve,     default: false

      t.boolean :is_today,       default: false

      t.boolean :is_tomorrow,    default: false

      t.boolean :is_week,        default: false

      t.boolean :is_month,       default: false

      t.boolean :is_new,         default: true

      t.timestamps
    end
  end
end
