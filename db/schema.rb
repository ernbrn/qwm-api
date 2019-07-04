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

ActiveRecord::Schema.define(version: 2019_07_04_163950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collection_works", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "collection_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id", "work_id"], name: "index_collection_works_on_collection_id_and_work_id", unique: true
    t.index ["collection_id"], name: "index_collection_works_on_collection_id"
    t.index ["work_id", "collection_id"], name: "index_collection_works_on_work_id_and_collection_id", unique: true
    t.index ["work_id"], name: "index_collection_works_on_work_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.boolean "public"
    t.bigint "user_id", null: false
    t.string "favorable_type"
    t.bigint "favorable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["favorable_type", "favorable_id"], name: "index_favorites_on_favorable_type_and_favorable_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "interest_list_works", force: :cascade do |t|
    t.bigint "interest_list_id", null: false
    t.bigint "work_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interest_list_id", "work_id"], name: "index_interest_list_works_on_interest_list_id_and_work_id", unique: true
    t.index ["interest_list_id"], name: "index_interest_list_works_on_interest_list_id"
    t.index ["work_id", "interest_list_id"], name: "index_interest_list_works_on_work_id_and_interest_list_id", unique: true
    t.index ["work_id"], name: "index_interest_list_works_on_work_id"
  end

  create_table "interest_lists", force: :cascade do |t|
    t.string "name"
    t.boolean "public"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_interest_lists_on_user_id"
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti", unique: true
  end

  create_table "links", force: :cascade do |t|
    t.string "link"
    t.string "link_text"
    t.string "linkable_type", null: false
    t.bigint "linkable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["linkable_type", "linkable_id"], name: "index_links_on_linkable_type_and_linkable_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.boolean "like"
    t.integer "severity"
    t.bigint "work_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_id"], name: "index_ratings_on_work_id"
  end

  create_table "references", force: :cascade do |t|
    t.text "note"
    t.string "reference_to_type"
    t.bigint "reference_to_id"
    t.string "referenced_by_type"
    t.bigint "referenced_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reference_to_type", "reference_to_id"], name: "index_references_on_reference_to_type_and_reference_to_id"
    t.index ["referenced_by_type", "referenced_by_id"], name: "index_references_on_referenced_by_type_and_referenced_by_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.boolean "public"
    t.text "body"
    t.bigint "work_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id", "work_id"], name: "index_reviews_on_user_id_and_work_id", unique: true
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["work_id"], name: "index_reviews_on_work_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "work_creators", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "creator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id", "work_id"], name: "index_work_creators_on_creator_id_and_work_id", unique: true
    t.index ["creator_id"], name: "index_work_creators_on_creator_id"
    t.index ["work_id", "creator_id"], name: "index_work_creators_on_work_id_and_creator_id", unique: true
    t.index ["work_id"], name: "index_work_creators_on_work_id"
  end

  create_table "work_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_work_types_on_name", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "title"
    t.datetime "publish_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "contributor_id"
    t.bigint "work_type_id", null: false
    t.index ["work_type_id"], name: "index_works_on_work_type_id"
  end

  add_foreign_key "collection_works", "collections"
  add_foreign_key "collection_works", "works"
  add_foreign_key "collections", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "interest_list_works", "interest_lists"
  add_foreign_key "interest_list_works", "works"
  add_foreign_key "interest_lists", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "work_creators", "creators"
  add_foreign_key "work_creators", "works"
  add_foreign_key "works", "users", column: "contributor_id"
  add_foreign_key "works", "work_types"
end
