# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_12_012813) do

  create_table "dishes", force: :cascade do |t|
    t.string "title", null: false
    t.integer "prep_time", default: 0, null: false
    t.integer "cook_time", null: false
    t.integer "sit_time", default: 0, null: false
    t.integer "yield", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "title", null: false
    t.float "protein", null: false
    t.float "fat", null: false
    t.float "carbs", null: false
    t.integer "cost", null: false
    t.boolean "allergen", default: false
    t.boolean "meat", default: false
    t.boolean "dairy_egg", default: false
    t.boolean "seafood", default: false
    t.boolean "other_animal", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "food_id", null: false
    t.integer "dish_id", null: false
    t.string "unit", null: false
    t.float "gram", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dish_id"], name: "index_ingredients_on_dish_id"
    t.index ["food_id"], name: "index_ingredients_on_food_id"
  end

  add_foreign_key "ingredients", "dishes"
  add_foreign_key "ingredients", "foods"
end
