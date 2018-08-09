# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_08_032309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.integer "team_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "induction_year"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score_hole_1"
    t.integer "score_hole_2"
    t.integer "score_hole_3"
    t.integer "score_hole_4"
    t.integer "score_hole_5"
    t.integer "score_hole_6"
    t.integer "score_hole_7"
    t.integer "score_hole_8"
    t.integer "score_hole_9"
    t.integer "score_first_half"
    t.integer "score_hole_10"
    t.integer "score_hole_11"
    t.integer "score_hole_12"
    t.integer "score_hole_13"
    t.integer "score_hole_14"
    t.integer "score_hole_15"
    t.integer "score_hole_16"
    t.integer "score_hole_17"
    t.integer "score_hole_18"
    t.integer "score_second_half"
    t.integer "total_score"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "tee_off_time"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "score_hole_1"
    t.integer "score_hole_2"
    t.integer "score_hole_3"
    t.integer "score_hole_4"
    t.integer "score_hole_5"
    t.integer "score_hole_6"
    t.integer "score_hole_7"
    t.integer "score_hole_8"
    t.integer "score_hole_9"
    t.integer "score_first_half"
    t.integer "score_hole_10"
    t.integer "score_hole_11"
    t.integer "score_hole_12"
    t.integer "score_hole_13"
    t.integer "score_hole_14"
    t.integer "score_hole_15"
    t.integer "score_hole_16"
    t.integer "score_hole_17"
    t.integer "score_hole_18"
    t.integer "score_second_half"
    t.integer "total_score"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
