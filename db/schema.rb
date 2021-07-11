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

ActiveRecord::Schema.define(version: 2021_07_11_212047) do

  create_table "foods", force: :cascade do |t|
    t.string "title", null: false #食材の名前 
    t.float "protein", null: false #100g当たりのタンパク量（g）
    t.float "fat", null: false #100g当たりの脂質量（g）
    t.float "carbs", null: false #100g当たりの炭水化物量（g）
    t.integer "cost", null: false #100gの価格 （円）
    t.boolean "allergen", default: false #アレルギー食品であるか
    t.boolean "meat", default: false #肉を含むか
    t.boolean "dairy_egg", default: false #乳製品,卵を含むか
    t.boolean "seafood", default: false #魚介を含むか
    t.boolean "other_animal", default: false #その他動物由来のものを含むか
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
