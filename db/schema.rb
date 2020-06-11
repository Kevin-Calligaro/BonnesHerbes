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

ActiveRecord::Schema.define(version: 2020_06_11_100718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "garden_vegetables", force: :cascade do |t|
    t.bigint "row_id", null: false
    t.bigint "vegetable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["row_id"], name: "index_garden_vegetables_on_row_id"
    t.index ["vegetable_id"], name: "index_garden_vegetables_on_vegetable_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "harvests", force: :cascade do |t|
    t.date "date"
    t.boolean "done"
    t.integer "quantity"
    t.text "comment"
    t.bigint "garden_vegetable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_vegetable_id"], name: "index_harvests_on_garden_vegetable_id"
  end

  create_table "plants", force: :cascade do |t|
    t.date "date"
    t.boolean "done"
    t.integer "quantity"
    t.text "comment"
    t.bigint "garden_vegetable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_vegetable_id"], name: "index_plants_on_garden_vegetable_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "status"
    t.bigint "vegetable1_id"
    t.bigint "vegetable2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vegetable1_id"], name: "index_relationships_on_vegetable1_id"
    t.index ["vegetable2_id"], name: "index_relationships_on_vegetable2_id"
  end

  create_table "rows", force: :cascade do |t|
    t.integer "length"
    t.integer "width"
    t.bigint "garden_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_id"], name: "index_rows_on_garden_id"
  end

  create_table "seeds", force: :cascade do |t|
    t.date "date"
    t.boolean "done"
    t.integer "quantity"
    t.text "comment"
    t.bigint "garden_vegetable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_vegetable_id"], name: "index_seeds_on_garden_vegetable_id"
  end

  create_table "users", force: :cascade do |t|
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

  create_table "vegetables", force: :cascade do |t|
    t.string "specie"
    t.string "variety"
    t.text "description"
    t.date "seed_start"
    t.date "seed_end"
    t.time "seed_period"
    t.text "seed_description"
    t.date "plant_start"
    t.date "plant_end"
    t.time "plant_period"
    t.text "plant_description"
    t.date "harvest_start"
    t.date "harvest_end"
    t.time "harvest_period"
    t.text "harvest_description"
    t.integer "raw_space"
    t.integer "line_space"
    t.text "friends"
    t.text "enemies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "garden_vegetables", "rows"
  add_foreign_key "garden_vegetables", "vegetables"
  add_foreign_key "gardens", "users"
  add_foreign_key "harvests", "garden_vegetables"
  add_foreign_key "plants", "garden_vegetables"
  add_foreign_key "rows", "gardens"
  add_foreign_key "seeds", "garden_vegetables"
end
