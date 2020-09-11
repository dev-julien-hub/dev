# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_09_083458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_about_categories", force: :cascade do |t|
    t.string "name"
    t.integer "categorie_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_about_odds", force: :cascade do |t|
    t.string "name"
    t.integer "odd_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_about_regions", force: :cascade do |t|
    t.string "name"
    t.integer "region_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "advantages", force: :cascade do |t|
    t.bigint "project_id"
    t.string "title"
    t.text "description"
    t.string "economique", default: ""
    t.string "social", default: ""
    t.string "culturel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_advantages_on_project_id"
  end

  create_table "contreparties", force: :cascade do |t|
    t.bigint "project_id"
    t.string "description10"
    t.text "description40"
    t.integer "jeuton_contrepartie"
    t.integer "quantite"
    t.boolean "address_valifunder", default: true
    t.datetime "envoie"
    t.boolean "check_val"
    t.boolean "quantity_box"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_contreparties_on_project_id"
  end

  create_table "diaporamas", force: :cascade do |t|
    t.bigint "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_diaporamas_on_project_id"
  end

  create_table "equipes", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "person_one"
    t.integer "person_two"
    t.integer "person_three"
    t.integer "person_four"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_equipes_on_project_id"
  end

  create_table "ideas", force: :cascade do |t|
    t.bigint "project_id"
    t.string "title", default: ""
    t.text "explication", null: false
    t.string "illustrations"
    t.boolean "is_attach"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_ideas_on_project_id"
  end

  create_table "planifications", force: :cascade do |t|
    t.bigint "user_id"
    t.string "group_user_id", default: ""
    t.string "title", null: false
    t.text "description"
    t.integer "amount", default: 0, null: false
    t.string "place", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date"
    t.integer "duration"
    t.boolean "is_path_img", default: false
    t.boolean "is_free", default: false
    t.boolean "is_valid", default: false
    t.boolean "is_approve", default: false
    t.boolean "is_today", default: false
    t.boolean "is_tomorrow", default: false
    t.boolean "is_week", default: false
    t.boolean "is_month", default: false
    t.boolean "is_new", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_planifications_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "admin_about_categorie_id"
    t.bigint "admin_about_region_id"
    t.bigint "admin_about_odd_id"
    t.string "title", null: false
    t.string "description", null: false
    t.string "slogan", default: ""
    t.string "localisation", default: ""
    t.datetime "start_crowd"
    t.datetime "end_crowd"
    t.integer "number_day"
    t.boolean "is_img_attach", default: false
    t.boolean "is_video_attach", default: false
    t.integer "rest_day", default: 0
    t.integer "collect_jeuton", default: 0
    t.integer "pourcentage", default: 0
    t.integer "jeuton", default: 0
    t.text "constatation"
    t.boolean "is_more_equipe", default: false
    t.boolean "is_finished", default: false
    t.boolean "is_cours", default: false
    t.boolean "is_calendar", default: false
    t.boolean "is_validate_admin", default: false
    t.boolean "is_public", default: false
    t.boolean "is_validate", default: false
    t.boolean "is_has_valifunder", default: false
    t.text "financement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_about_categorie_id"], name: "index_projects_on_admin_about_categorie_id"
    t.index ["admin_about_odd_id"], name: "index_projects_on_admin_about_odd_id"
    t.index ["admin_about_region_id"], name: "index_projects_on_admin_about_region_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.bigint "project_id"
    t.string "title", default: ""
    t.text "explication", null: false
    t.string "illustrations"
    t.boolean "is_attach"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_solutions_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudo"
    t.string "first"
    t.string "last"
    t.string "country", default: ""
    t.string "region", default: ""
    t.string "address", default: ""
    t.string "mobile"
    t.string "university", default: ""
    t.string "diplome", default: ""
    t.string "school_year", default: ""
    t.string "profession", default: ""
    t.string "profession_place", default: ""
    t.string "profession_year", default: ""
    t.string "entreprise", default: ""
    t.integer "takalo", default: 0, null: false
    t.datetime "birthday"
    t.string "nature"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "advantages", "projects"
  add_foreign_key "contreparties", "projects"
  add_foreign_key "equipes", "projects"
  add_foreign_key "ideas", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "solutions", "projects"
end
